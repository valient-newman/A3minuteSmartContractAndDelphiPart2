{******************************************************************************}
{                                                                              }
{                                  Delphereum                                  }
{                                                                              }
{             Copyright(c) 2018 Stefan van As <svanas@runbox.com>              }
{           Github Repository <https://github.com/svanas/delphereum>           }
{                                                                              }
{             Distributed under GNU AGPL v3.0 with Commons Clause              }
{                                                                              }
{   This program is free software: you can redistribute it and/or modify       }
{   it under the terms of the GNU Affero General Public License as published   }
{   by the Free Software Foundation, either version 3 of the License, or       }
{   (at your option) any later version.                                        }
{                                                                              }
{   This program is distributed in the hope that it will be useful,            }
{   but WITHOUT ANY WARRANTY; without even the implied warranty of             }
{   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the              }
{   GNU Affero General Public License for more details.                        }
{                                                                              }
{   You should have received a copy of the GNU Affero General Public License   }
{   along with this program.  If not, see <https://www.gnu.org/licenses/>      }
{                                                                              }
{******************************************************************************}
// Delphereum Study. Tutorial 'A 3-minute Smart Contract and Delphi — Part 2'
// Project in Embarcadero Delphi 11 made with source of this tutorial: https://svanas.medium.com/a-3-minute-smart-contract-and-delphi-part-2-446925faa47b
// Prepared by Valient Newman <valient.newman@proton.me>
// My Github Repository <https://github.com/valient-newman>

unit A3minuteSmartContractAndDelphiPart2Unit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses
   Web3, Web3.eth, Web3.eth.types, Velthuis.BigIntegers;


var
  Client: IWeb3;

procedure TForm1.Button1Click(Sender: TObject);
begin
web3.eth.call(Client,
  '0x94863b36b2d245cdeb3686837fb81ebd78a18086',
  'getNumber()', [], procedure(qty: BigInteger; err: IError)
begin
  TThread.Synchronize(nil, procedure
  begin
    if Assigned(err) then
      MessageDlg(err.Message, TMsgDlgType.mtError, [TMsgDlgBtn.mbOK], 0)
    else
      ShowMessage(qty.ToString);
  end);
end);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
web3.eth.write(Client,
  TPrivateKey('b5b1870957d373ef0eeffecc6e4812c0fd08f554b37b233526acc331bf1544f7'), // from private key
  '0x94863b36b2d245cdeb3686837fb81ebd78a18086',                                    // to smart contract
  'incrementNumber()', [],
  procedure(rcpt: ITxReceipt; err: IError) begin end);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
web3.eth.write(Client,
  TPrivateKey('b5b1870957d373ef0eeffecc6e4812c0fd08f554b37b233526acc331bf1544f7'), // from private key
  '0x94863b36b2d245cdeb3686837fb81ebd78a18086',                                    // to smart contract
  'setNumber(uint256)', [143],
  procedure(rcpt: ITxReceipt; err: IError) begin end);
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  Ropsten : TChain;
begin
// This is code of Stefan van As
//  Client := TWeb3.Create(Ropsten, 'https://ropsten.infura.io/v3/your-project-id');
// This is my code, it is compiled
  Client := TWeb3.Create(
    Ropsten.SetRPC(                                   // Ropsten test net
    'https://ropsten.infura.io/v3/your-project-id'))
end;

end.
