unit uPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Viewport3D, FMX.Controls.Presentation, FMX.StdCtrls, System.Math.Vectors,
  FMX.Types3D, FMX.ListBox, FMX.MaterialSources, FMX.Ani, FMX.Objects3D,
  FMX.OBJ.Importer, FMX.Import,
  FMX.Controls3D;

type
  TfrmPrincipal = class(TForm)
    View: TViewport3D;
    Dummy: TDummy;
    Light: TLight;
    Model: TModel3D;
    FloatAnimation: TFloatAnimation;
    TMSBump: TTextureMaterialSource;
    TMSColor: TTextureMaterialSource;
    TMSIllumination: TTextureMaterialSource;
    TMSSpecular: TTextureMaterialSource;
    Grid3D1: TGrid3D;
    MLSColor: TLightMaterialSource;
    Image1: TImage;
    Image2: TImage;
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
   X: Integer;
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var M: TMesh;
begin
X:=0;
  for M in Model.MeshCollection do
    begin
      M.MaterialSource:= MLSColor;
    end;
end;

procedure TfrmPrincipal.Image1Click(Sender: TObject);
begin
  X:=X+1;
  Model.RotationAngle.X:= X;
end;

end.
