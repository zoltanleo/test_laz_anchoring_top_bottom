unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  with Button2 do
  begin
    AnchorSideTop.Side:= asrTop;
    AnchorSideTop.Control:= Edit2;
    BorderSpacing.Top:= 0;

    AnchorSideBottom.Side:= asrBottom;
    AnchorSideBottom.Control:= Edit2;
    BorderSpacing.Bottom:= 0;

    AnchorSideLeft.Side:= asrBottom;
    AnchorSideLeft.Control:= Edit2;

    Anchors:= Anchors + [akLeft, akTop, akBottom];
  end;

  with Button4 do
  begin
    AnchorSideTop.Side:= asrTop;
    AnchorSideTop.Control:= ComboBox2;
    BorderSpacing.Top:= 0;

    AnchorSideBottom.Side:= asrBottom;
    AnchorSideBottom.Control:= ComboBox2;
    BorderSpacing.Bottom:= 0;

    AnchorSideLeft.Side:= asrBottom;
    AnchorSideLeft.Control:= ComboBox2;


    Anchors:= Anchors + [akLeft, akTop, akBottom];
  end;

end;

end.

