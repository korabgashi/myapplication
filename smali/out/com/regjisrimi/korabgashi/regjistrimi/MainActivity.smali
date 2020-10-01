.class public Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field doganimi:Landroid/widget/Button;

.field regjistrimi:Landroid/widget/Button;

.field textView5:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->setContentView(I)V

    .line 20
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->doganimi:Landroid/widget/Button;

    .line 21
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->regjistrimi:Landroid/widget/Button;

    .line 23
    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->textView5:Landroid/widget/TextView;

    .line 26
    iget-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->doganimi:Landroid/widget/Button;

    new-instance v1, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity$1;-><init>(Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;->regjistrimi:Landroid/widget/Button;

    new-instance v1, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity$2;-><init>(Lcom/regjisrimi/korabgashi/regjistrimi/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
