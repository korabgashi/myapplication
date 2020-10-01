.class Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$3;
.super Ljava/lang/Object;
.source "doganimi.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->newCalculation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;


# direct methods
.method constructor <init>(Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$3;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 121
    return-void
.end method
