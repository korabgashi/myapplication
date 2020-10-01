.class Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;
.super Ljava/lang/Object;
.source "vazhdimi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;


# direct methods
.method constructor <init>(Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    iget-object v0, v0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->kalkulimi:Landroid/widget/Button;

    new-instance v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;

    invoke-direct {v1, p0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;-><init>(Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    iget-object v0, v0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->reset:Landroid/widget/Button;

    new-instance v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$2;

    invoke-direct {v1, p0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$2;-><init>(Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method
