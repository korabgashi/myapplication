.class Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;


# direct methods
.method constructor <init>(Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;

    const-class v2, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "myIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;

    invoke-virtual {v1, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
