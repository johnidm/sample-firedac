unit Unit1;

interface

uses
 FireDAC.VCLUI.Wait,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.PG, Data.DB,
  FireDAC.Comp.Client, Vcl.StdCtrls, FireDAC.Phys.FB, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    Button2: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

  if (ComboBox1.ItemIndex = 0) then
  begin
    FDConnection1.Params.LoadFromFile('firebird.ini')

  end else if (ComboBox1.ItemIndex = 1) then
  begin

    FDConnection1.Params.LoadFromFile('postgre.ini')
  end  else
    raise Exception.Create('Banco nao configurado');

  FDConnection1.Connected:= True;
  ShowMessage( FDConnection1.Params.text)

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FDQuery1.Active:= True;
end;

end.
