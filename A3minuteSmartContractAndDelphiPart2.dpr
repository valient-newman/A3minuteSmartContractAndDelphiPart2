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
// Delphereum Study. Tutorial 'A 3-minute Smart Contract and Delphi � Part 2'
// Project in Embarcadero Delphi 11 made with source of this tutorial: https://svanas.medium.com/a-3-minute-smart-contract-and-delphi-part-2-446925faa47b
// Prepared by Valient Newman <valient.newman@proton.me>
// My Github Repository <https://github.com/valient-newman>

program A3minuteSmartContractAndDelphiPart2;

uses
  Vcl.Forms,
  A3minuteSmartContractAndDelphiPart2Unit in 'A3minuteSmartContractAndDelphiPart2Unit.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
