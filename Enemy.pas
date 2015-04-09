unit Enemy;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
     Dialogs,AdSprites;

type
  TEnemy = class (TImageSprite)
  public
    Speed: Integer;
    life: Boolean;
    dx: Double;
    procedure DoMove(TimeGap:double);override;
    constructor Create(AParent:TSprite);override;
    procedure DoCollision(Sprite:TSprite; var Done:boolean);override;
  end;

implementation

uses Main;

{ TEnemy }

constructor TEnemy.Create(AParent: TSprite);
begin
  inherited;

end;

procedure TEnemy.DoCollision(Sprite: TSprite; var Done: boolean);
begin
  inherited;
  if (Sprite is TBloks) then
    dx:= -dx;
end;

procedure TEnemy.DoMove(TimeGap: double);
begin
  inherited;
  x:= x + dx * Form1.AdPerCounter.TimeGap;
  Collision;
end;

end.
