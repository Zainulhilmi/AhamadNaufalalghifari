unit Umenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinsdxBarPainter, dxBar,
  cxClasses, dxRibbon, ImgList;

type
  TFmenu = class(TForm)
    dxrbn1Tab1: TdxRibbonTab;
    dxrbn1: TdxRibbon;
    dxbrmngr1: TdxBarManager;
    cxmglst1: TcxImageList;
    dxrbntbdxrbn1Tab2: TdxRibbonTab;
    dxbrmngr1Bar1: TdxBar;
    dxbrlrgbtn1: TdxBarLargeButton;
    dxbrlrgbtn2: TdxBarLargeButton;
    dxbrmngr1Bar2: TdxBar;
    dxbrlrgbtn3: TdxBarLargeButton;
    dxbrbtn1: TdxBarButton;
    dxrbntbdxrbn1Tab3: TdxRibbonTab;
    dxrbntbdxrbn1Tab4: TdxRibbonTab;
    dxbrmngr1Bar3: TdxBar;
    dxbrlrgbtn4: TdxBarLargeButton;
    dxbrlrgbtn5: TdxBarLargeButton;
    procedure dxbrbtn1Click(Sender: TObject);
    procedure dxbrlrgbtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fmenu: TFmenu;

implementation
 uses Uviewjadwal, Ujadwal;
{$R *.dfm}

procedure TFmenu.dxbrbtn1Click(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TFmenu.dxbrlrgbtn3Click(Sender: TObject);
begin
Form2.ShowModal;
end;

end.
