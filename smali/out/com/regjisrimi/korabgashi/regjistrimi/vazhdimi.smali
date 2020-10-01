.class public Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;
.super Landroid/support/v7/app/AppCompatActivity;
.source "vazhdimi.java"


# instance fields
.field decimalFormat:Ljava/text/DecimalFormat;

.field editText3:Landroid/widget/EditText;

.field kalkulimi:Landroid/widget/Button;

.field reset:Landroid/widget/Button;

.field textView:Landroid/widget/TextView;

.field textView4:Landroid/widget/TextView;

.field textView6:Landroid/widget/TextView;

.field textView7:Landroid/widget/TextView;

.field textView8:Landroid/widget/TextView;

.field textView9:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 17
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public calculation()V
    .registers 13

    .prologue
    .line 79
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 80
    .local v2, "insuranceFee":Ljava/lang/Double;
    const/16 v3, 0x32

    .line 81
    .local v3, "miaFee":I
    const/16 v4, 0xa

    .line 82
    .local v4, "municipalityFee":I
    const/16 v5, 0x1e

    .line 84
    .local v5, "technicalControl":I
    const/16 v0, 0x19

    .line 86
    .local v0, "continueRegistration":I
    iget-object v7, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->editText3:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "cubicCapacity":I
    if-ltz v1, :cond_f3

    const/16 v7, 0x2ee

    if-gt v1, v7, :cond_f3

    .line 89
    const-wide/high16 v8, 0x404d000000000000L    # 58.0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 110
    :cond_28
    :goto_28
    iget-object v7, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Sigurimi: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Euro"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView4:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Kontrolla teknike: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Euro"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v7, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView6:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Taksa komunale: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Euro"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v7, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView7:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Taksa ekologjike dhe rrugore: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Euro"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v7, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView8:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vazhdimi i regjistrimit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Euro"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v5

    add-double/2addr v8, v10

    int-to-double v10, v4

    add-double/2addr v8, v10

    int-to-double v10, v3

    add-double/2addr v8, v10

    int-to-double v10, v0

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 122
    .local v6, "totalExpense":Ljava/lang/Double;
    iget-object v7, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView9:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Totali i shpenzimeve: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->decimalFormat:Ljava/text/DecimalFormat;

    invoke-virtual {v9, v6}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Euro"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void

    .line 90
    .end local v6    # "totalExpense":Ljava/lang/Double;
    :cond_f3
    const/16 v7, 0x2ef

    if-lt v1, v7, :cond_106

    const/16 v7, 0x384

    if-gt v1, v7, :cond_106

    .line 91
    const-wide v8, 0x4051666666666666L    # 69.6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28

    .line 92
    :cond_106
    const/16 v7, 0x385

    if-lt v1, v7, :cond_119

    const/16 v7, 0x44c

    if-gt v1, v7, :cond_119

    .line 93
    const-wide v8, 0x405575c28f5c28f6L    # 85.84

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28

    .line 94
    :cond_119
    const/16 v7, 0x44d

    if-lt v1, v7, :cond_12c

    const/16 v7, 0x514

    if-gt v1, v7, :cond_12c

    .line 95
    const-wide v8, 0x4058a66666666666L    # 98.6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28

    .line 96
    :cond_12c
    const/16 v7, 0x515

    if-lt v1, v7, :cond_13f

    const/16 v7, 0x5dc

    if-gt v1, v7, :cond_13f

    .line 97
    const-wide v8, 0x405aae147ae147aeL    # 106.72

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28

    .line 98
    :cond_13f
    const/16 v7, 0x5dd

    if-lt v1, v7, :cond_152

    const/16 v7, 0x6a4

    if-gt v1, v7, :cond_152

    .line 99
    const-wide v8, 0x405e733333333333L    # 121.8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28

    .line 100
    :cond_152
    const/16 v7, 0x6a5

    if-lt v1, v7, :cond_165

    const/16 v7, 0x79e

    if-gt v1, v7, :cond_165

    .line 101
    const-wide v8, 0x4062d9999999999aL    # 150.8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28

    .line 102
    :cond_165
    const/16 v7, 0x79f

    if-lt v1, v7, :cond_178

    const/16 v7, 0x8ca

    if-gt v1, v7, :cond_178

    .line 103
    const-wide v8, 0x40669eb851eb851fL    # 180.96

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28

    .line 104
    :cond_178
    const/16 v7, 0x8cb

    if-lt v1, v7, :cond_18b

    const/16 v7, 0xa8c

    if-gt v1, v7, :cond_18b

    .line 105
    const-wide v8, 0x406a19999999999aL    # 208.8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28

    .line 106
    :cond_18b
    const/16 v7, 0xa8d

    if-lt v1, v7, :cond_28

    .line 107
    const-wide v8, 0x406e733333333333L    # 243.6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto/16 :goto_28
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->setContentView(I)V

    .line 30
    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->kalkulimi:Landroid/widget/Button;

    .line 31
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->reset:Landroid/widget/Button;

    .line 32
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->editText3:Landroid/widget/EditText;

    .line 33
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView4:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView6:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView7:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView8:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0b0076

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->textView9:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;->kalkulimi:Landroid/widget/Button;

    new-instance v1, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;

    invoke-direct {v1, p0}, Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi$1;-><init>(Lcom/regjisrimi/korabgashi/regjistrimi/vazhdimi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method
