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
    ComboBox1: TComboBox;
    Edit1: TEdit;
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
  with Button1 do
  begin
    AnchorSideTop.Side:= asrTop;
    AnchorSideTop.Control:= Edit1;
    BorderSpacing.Top:= 0;

    AnchorSideBottom.Side:= asrBottom;
    AnchorSideBottom.Control:= Edit1;
    BorderSpacing.Bottom:= 0;

    AnchorSideLeft.Side:= asrRight;
    AnchorSideLeft.Control:= Edit1;
    BorderSpacing.Left:= 2;

    Anchors:= Anchors + [akLeft, akTop, akBottom];
  end;

  with Button2 do
  begin
    AnchorSideTop.Side:= asrTop;
    AnchorSideTop.Control:= ComboBox1;
    BorderSpacing.Top:= 0;

    AnchorSideBottom.Side:= asrBottom;
    AnchorSideBottom.Control:= ComboBox1;
    BorderSpacing.Bottom:= 0;

    AnchorSideLeft.Side:= asrRight;
    AnchorSideLeft.Control:= ComboBox1;
    BorderSpacing.Left:= 2;

    Anchors:= Anchors + [akLeft, akTop, akBottom];
  end;

end;

end.

