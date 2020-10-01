.class Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;
.super Ljava/lang/Object;
.source "vazhdimi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;


# direct methods
.method constructor <init>(Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;->this$1:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;->this$1:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->editText3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_45

    .line 48
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;->this$1:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    invoke-virtual {v1}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Ju lutem, shkruani kubikazhen!"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 51
    :goto_2a
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;->this$1:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 52
    .local v0, "imn":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;->this$1:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->editText3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 54
    return-void

    .line 49
    .end local v0    # "imn":Landroid/view/inputmethod/InputMethodManager;
    :cond_45
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1$1;->this$1:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;

    invoke-virtual {v1}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->calculation()V

    goto :goto_2a
.end method
