unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  memo1.Lines.SaveToFile('settings.txt');
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  if fileexists('settings.txt') then memo1.Lines.LoadFromFile('settings.txt') else
    begin
     memo1.Clear;
     memo1.Lines.Add('C:\Program Files\Notepad++\notepad++.exe');
     button1.Click;
    end;

end;

end.
