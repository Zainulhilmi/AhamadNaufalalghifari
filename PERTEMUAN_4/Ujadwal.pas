unit Ujadwal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ComCtrls;

type
  TForm2 = class(TForm)
    grp1: TGroupBox;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    cbb1: TComboBox;
    dtp1: TDateTimePicker;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    btn1: TBitBtn;
    btn2: TBitBtn;
    btn3: TBitBtn;
    btn4: TBitBtn;
    procedure btn3Click(Sender: TObject);
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  upt: string ;
implementation
  uses Uviewjadwal; 
{$R *.dfm}

procedure TForm2.bersih;
begin
edt1.Text :='00:00';
edt2.Text :='00:00';
cbb1.Text :='----PILIH HARI----';
edt3.Text :='';
edt4.Text :='';
edt5.Text :='';
edt6.Text :='0';

form1.qry1.SQL.Clear;
Form1.qry1.SQL.Add('select * from jadwal_table');
form1.qry1.Open;
dbgrd1.Columns[0].Width:=30;
dbgrd1.Columns[1].Width:=50;
dbgrd1.Columns[2].Width:=60;
dbgrd1.Columns[3].Width:=90;
dbgrd1.Columns[4].Width:=60;
dbgrd1.Columns[5].Width:=60;
dbgrd1.Columns[6].Width:=110;
dbgrd1.Columns[7].Width:=80;
dbgrd1.Columns[8].Width:=80;
btn3.Enabled:=True;
btn1.Enabled:=False;
btn2.Enabled:=False;
end;

procedure TForm2.btn3Click(Sender: TObject);
var a : Integer;
begin
if (edt1.Text='') or (edt1.Text='00:00')or (edt2.Text='') or (edt2.Text='00:00') then
begin
  ShowMessage('DATA BELUM TERISI DENGAN BENAR');
  end else
  if (cbb1.Text='')or(cbb1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DI ISI');
  end else
  if (edt3.Text='')or(edt3.Text='-')or(edt4.Text='')or(edt4.Text='-')then
  begin
     ShowMessage('INPUTAN RUANGAN DAN MATAKULIAH MASIH KOSONG');
  end else
    if (edt5.Text='')or(edt5.Text='-')or(edt6.Text='')or(edt6.Text='0')then
  begin
     ShowMessage('INPUTAN KELAS DAN TOTAL HADIR MASIH KOSONG');
  end else
  if Form1.qry1.Locate('hari',cbb1.Text,[])and(Form1.qry1.Locate('jam_awal',edt1.Text,[]))  then
  begin
  ShowMessage('DATA SUDAH PERNAH DI INPUT');
  edt1.SetFocus;
  end else  
  begin
  a:=form1.qry1.RecordCount+1;
    with Form1.qry1 do
    begin
    SQL.Clear;
    SQL.Add('insert into jadwal_table values("'+inttostr(a)+'","'+edt1.Text+'","'+edt2.Text+'","'+cbb1.Text+'","'+formatdatetime('yyyy-mm-dd',dtp1.Date)+'","'+edt3.Text+'","'+edt4.Text+'","'+edt5.Text+'","'+edt6.Text+'")');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from jadwal_table');
    Open;
    ShowMessage('DATA BERHASIL DISIMPAN');
     bersih; 
    end;
    end;
end;

procedure TForm2.dbgrd1CellClick(Column: TColumn);
begin
  try
  upt:=Form1.qry1.Fields[0].AsString;
edt1.Text := Form1.qry1.Fields[1].AsString;
edt2.Text := Form1.qry1.Fields[2].AsString;
cbb1.Text := Form1.qry1.Fields[3].AsString;
dtp1.Date := Form1.qry1.Fields[4].AsDateTime;
edt3.Text := Form1.qry1.Fields[5].AsString;
edt4.Text := Form1.qry1.Fields[6].AsString;
edt5.Text := Form1.qry1.Fields[7].AsString;
edt6.Text := Form1.qry1.Fields[8].AsString;
btn2.Enabled:=True;
btn3.Enabled:=False;
btn1.Enabled:=True;
except
end;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
bersih;
end;

procedure TForm2.btn2Click(Sender: TObject);
begin
 if (edt1.Text='') or (edt1.Text='00:00')or (edt2.Text='') or (edt2.Text='00:00') then
begin
  ShowMessage('DATA BELUM TERISI DENGAN BENAR');
  end else
  if (cbb1.Text='')or(cbb1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DI ISI');
  end else
  if (edt3.Text='')or(edt3.Text='-')or(edt4.Text='')or(edt4.Text='-')then
  begin
     ShowMessage('INPUTAN RUANGAN DAN MATAKULIAH MASIH KOSONG');
  end else
    if (edt5.Text='')or(edt5.Text='-')or(edt6.Text='')or(edt6.Text='0')then
  begin
     ShowMessage('INPUTAN KELAS DAN TOTAL HADIR MASIH KOSONG');
  end else
  if (edt1.Text= Form1.qry1.Fields[1].AsString) and (cbb1.Text= Form1.qry1.Fields[3].AsString) then
  begin
  ShowMessage('DATA TIDAK ADA PERUBAHAN');
  end else
  begin
     with Form1.qry1 do
     begin
      SQL.Clear;
      SQL.Add('update jadwal_table set jam_awal="'+edt1.Text+'",jam__akhir="'+edt2.Text+'" where id="'+upt+'"');
      ExecSQL;

      SQL.Clear;
      SQL.Add('select * from jadwal_table');
      Open;
      ShowMessage('DATA BERHASIL DI UPDATE');
      bersih;
  end;
end;
  end;
procedure TForm2.btn1Click(Sender: TObject);
begin
 if (edt1.Text='') or (edt1.Text='00:00')or (edt2.Text='') or (edt2.Text='00:00') then
begin
  ShowMessage('DATA BELUM TERISI DENGAN BENAR');
  end else
  if (cbb1.Text='')or(cbb1.Text='----PILIH HARI----')then
  begin
    ShowMessage('HARI BELUM DI ISI');
  end else
  if (edt3.Text='')or(edt3.Text='-')or(edt4.Text='')or(edt4.Text='-')then
  begin
     ShowMessage('INPUTAN RUANGAN DAN MATAKULIAH MASIH KOSONG');
  end else
    if (edt5.Text='')or(edt5.Text='-')or(edt6.Text='')or(edt6.Text='0')then
  begin
     ShowMessage('INPUTAN KELAS DAN TOTAL HADIR MASIH KOSONG');
  end else
  begin
    if MessageDlg('APAKAH YAKIN INGIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)=mryes then
    begin
     with Form1.qry1 do
     begin
       SQL.Clear;
       SQL.Add('delete from jadwal_table where id="'+upt+'"');
       ExecSQL;
       bersih;
       ShowMessage('DATA BERHASIL DIHAPUS');
     end;
    end else
    begin
      ShowMessage('DATA BATAL DIHAPUS!');
    end;
  end;
end;

procedure TForm2.btn4Click(Sender: TObject);
begin
bersih;
end;

end.
