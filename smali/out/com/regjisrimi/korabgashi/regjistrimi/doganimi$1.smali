.class Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;
.super Ljava/lang/Object;
.source "doganimi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->onCreate(Landroid/os/Bundle;)V
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
    .line 49
    iput-object p1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_43

    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText4:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_43

    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText5:Landroid/widget/EditText;

    .line 53
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_7e

    .line 54
    :cond_43
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    invoke-virtual {v1}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Ju lutem, mbushni te gjitha fushat"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 57
    :goto_52
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 58
    .local v0, "imn2":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 59
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText4:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 60
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    iget-object v1, v1, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText5:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 64
    return-void

    .line 55
    .end local v0    # "imn2":Landroid/view/inputmethod/InputMethodManager;
    :cond_7e
    iget-object v1, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;->this$0:Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;

    invoke-virtual {v1}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->newCalculation()V

    goto :goto_52
.end method
