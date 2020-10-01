.class public Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;
.super Landroid/support/v7/app/AppCompatActivity;
.source "doganimi.java"


# instance fields
.field decimalFormat:Ljava/text/DecimalFormat;

.field editText:Landroid/widget/EditText;

.field editText4:Landroid/widget/EditText;

.field editText5:Landroid/widget/EditText;

.field kalkulo:Landroid/widget/Button;

.field reset:Landroid/widget/Button;

.field switch1:Landroid/widget/Switch;

.field textView12:Landroid/widget/TextView;

.field textView13:Landroid/widget/TextView;

.field textView14:Landroid/widget/TextView;

.field textView15:Landroid/widget/TextView;

.field textView16:Landroid/widget/TextView;

.field textView17:Landroid/widget/TextView;

.field textView18:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 20
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->decimalFormat:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method public newCalculation()V
    .registers 21

    .prologue
    .line 93
    const/4 v15, 0x1

    new-array v7, v15, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v7, v15

    .line 99
    .local v7, "exciseTax11":[I
    const-wide/16 v16, 0x0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 100
    .local v9, "insuranceFee":Ljava/lang/Double;
    const/4 v15, 0x1

    new-array v6, v15, [I

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v6, v15

    .line 105
    .local v6, "exciseTax":[I
    const/16 v8, 0x7d

    .line 106
    .local v8, "homologationFee":I
    const/16 v10, 0x32

    .line 107
    .local v10, "miaFee":I
    const/16 v11, 0xa

    .line 109
    .local v11, "municipalityFee":I
    const/16 v13, 0x1e

    .line 111
    .local v13, "vrdAndTables":I
    const v15, 0x7f0b005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->switch1:Landroid/widget/Switch;

    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->switch1:Landroid/widget/Switch;

    new-instance v16, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$3;-><init>(Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;)V

    invoke-virtual/range {v15 .. v16}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 125
    .local v2, "carValue":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText4:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 126
    .local v14, "yearOfProduction":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText5:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 128
    .local v5, "cubicCapacity":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->switch1:Landroid/widget/Switch;

    invoke-virtual {v15}, Landroid/widget/Switch;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_217

    const/16 v15, 0x7e1

    if-ne v14, v15, :cond_217

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_217

    .line 129
    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v6, v15

    .line 153
    :cond_88
    :goto_88
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->switch1:Landroid/widget/Switch;

    invoke-virtual {v15}, Landroid/widget/Switch;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_2c0

    const/16 v15, 0x7e1

    if-ne v14, v15, :cond_2c0

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_2c0

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_2c0

    .line 154
    const/4 v15, 0x0

    const/16 v16, 0x12c

    aput v16, v6, v15

    .line 179
    :cond_a3
    :goto_a3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->switch1:Landroid/widget/Switch;

    invoke-virtual {v15}, Landroid/widget/Switch;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_395

    const/16 v15, 0x7e1

    if-ne v14, v15, :cond_395

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_395

    .line 180
    const/4 v15, 0x0

    const/16 v16, 0x320

    aput v16, v6, v15

    .line 205
    :cond_ba
    :goto_ba
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x3ff199999999999aL    # 1.1

    mul-double v16, v16, v18

    const/4 v15, 0x0

    aget v15, v6, v15

    int-to-double v0, v15

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 206
    .local v3, "carValueCostums":Ljava/lang/Double;
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const-wide v18, 0x3ff2e147ae147ae1L    # 1.18

    mul-double v16, v16, v18

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 208
    .local v4, "carValueCostumsVat":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView12:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Dogana + TVSH: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Euro"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    if-ltz v5, :cond_43e

    const/16 v15, 0x2ee

    if-gt v5, v15, :cond_43e

    .line 211
    const-wide/high16 v16, 0x404d000000000000L    # 58.0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 232
    :cond_11e
    :goto_11e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView13:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Sigurimi: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Euro"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView14:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Homologimi: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Euro"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView15:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Taksa ekologjike dhe rrugore: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Euro"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView16:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Taksa Komunale: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Euro"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    int-to-double v0, v8

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    int-to-double v0, v10

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    int-to-double v0, v11

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    add-double v16, v16, v18

    int-to-double v0, v13

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 242
    .local v12, "totalTax":Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView17:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Libreza dhe tabelat: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Euro"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView18:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Totali i taksave: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->decimalFormat:Ljava/text/DecimalFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Euro"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    return-void

    .line 130
    .end local v3    # "carValueCostums":Ljava/lang/Double;
    .end local v4    # "carValueCostumsVat":Ljava/lang/Double;
    .end local v12    # "totalTax":Ljava/lang/Double;
    :cond_217
    const/16 v15, 0x7e1

    if-ne v14, v15, :cond_226

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_226

    .line 131
    const/4 v15, 0x0

    const/16 v16, 0x190

    aput v16, v6, v15

    goto/16 :goto_88

    .line 132
    :cond_226
    const/16 v15, 0x7d9

    if-lt v14, v15, :cond_239

    const/16 v15, 0x7e0

    if-gt v14, v15, :cond_239

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_239

    .line 133
    const/4 v15, 0x0

    const/16 v16, 0x190

    aput v16, v6, v15

    goto/16 :goto_88

    .line 134
    :cond_239
    const/16 v15, 0x7d8

    if-ne v14, v15, :cond_248

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_248

    .line 135
    const/4 v15, 0x0

    const/16 v16, 0x258

    aput v16, v6, v15

    goto/16 :goto_88

    .line 136
    :cond_248
    const/16 v15, 0x7d7

    if-ne v14, v15, :cond_257

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_257

    .line 137
    const/4 v15, 0x0

    const/16 v16, 0x2bc

    aput v16, v6, v15

    goto/16 :goto_88

    .line 138
    :cond_257
    const/16 v15, 0x7d6

    if-ne v14, v15, :cond_266

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_266

    .line 139
    const/4 v15, 0x0

    const/16 v16, 0x320

    aput v16, v6, v15

    goto/16 :goto_88

    .line 140
    :cond_266
    const/16 v15, 0x7d5

    if-ne v14, v15, :cond_275

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_275

    .line 141
    const/4 v15, 0x0

    const/16 v16, 0x384

    aput v16, v6, v15

    goto/16 :goto_88

    .line 142
    :cond_275
    const/16 v15, 0x7d4

    if-ne v14, v15, :cond_284

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_284

    .line 143
    const/4 v15, 0x0

    const/16 v16, 0x3e8

    aput v16, v6, v15

    goto/16 :goto_88

    .line 144
    :cond_284
    const/16 v15, 0x7d3

    if-ne v14, v15, :cond_293

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_293

    .line 145
    const/4 v15, 0x0

    const/16 v16, 0x44c

    aput v16, v6, v15

    goto/16 :goto_88

    .line 146
    :cond_293
    const/16 v15, 0x7d2

    if-ne v14, v15, :cond_2a2

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_2a2

    .line 147
    const/4 v15, 0x0

    const/16 v16, 0x4b0

    aput v16, v6, v15

    goto/16 :goto_88

    .line 148
    :cond_2a2
    const/16 v15, 0x7d1

    if-ne v14, v15, :cond_2b1

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_2b1

    .line 149
    const/4 v15, 0x0

    const/16 v16, 0x514

    aput v16, v6, v15

    goto/16 :goto_88

    .line 150
    :cond_2b1
    const/16 v15, 0x7d0

    if-gt v14, v15, :cond_88

    const/16 v15, 0x7d0

    if-gt v5, v15, :cond_88

    .line 151
    const/4 v15, 0x0

    const/16 v16, 0x5dc

    aput v16, v6, v15

    goto/16 :goto_88

    .line 155
    :cond_2c0
    const/16 v15, 0x7e1

    if-ne v14, v15, :cond_2d3

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_2d3

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_2d3

    .line 156
    const/4 v15, 0x0

    const/16 v16, 0x190

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 157
    :cond_2d3
    const/16 v15, 0x7d9

    if-lt v14, v15, :cond_2ea

    const/16 v15, 0x7e0

    if-gt v14, v15, :cond_2ea

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_2ea

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_2ea

    .line 158
    const/4 v15, 0x0

    const/16 v16, 0x190

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 159
    :cond_2ea
    const/16 v15, 0x7d8

    if-ne v14, v15, :cond_2fd

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_2fd

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_2fd

    .line 160
    const/4 v15, 0x0

    const/16 v16, 0x258

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 161
    :cond_2fd
    const/16 v15, 0x7d7

    if-ne v14, v15, :cond_310

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_310

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_310

    .line 162
    const/4 v15, 0x0

    const/16 v16, 0x320

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 163
    :cond_310
    const/16 v15, 0x7d6

    if-ne v14, v15, :cond_323

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_323

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_323

    .line 164
    const/4 v15, 0x0

    const/16 v16, 0x3e8

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 165
    :cond_323
    const/16 v15, 0x7d5

    if-ne v14, v15, :cond_336

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_336

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_336

    .line 166
    const/4 v15, 0x0

    const/16 v16, 0x4b0

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 167
    :cond_336
    const/16 v15, 0x7d4

    if-ne v14, v15, :cond_349

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_349

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_349

    .line 168
    const/4 v15, 0x0

    const/16 v16, 0x578

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 169
    :cond_349
    const/16 v15, 0x7d3

    if-ne v14, v15, :cond_35c

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_35c

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_35c

    .line 170
    const/4 v15, 0x0

    const/16 v16, 0x640

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 171
    :cond_35c
    const/16 v15, 0x7d2

    if-ne v14, v15, :cond_36f

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_36f

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_36f

    .line 172
    const/4 v15, 0x0

    const/16 v16, 0x708

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 173
    :cond_36f
    const/16 v15, 0x7d1

    if-ne v14, v15, :cond_382

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_382

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_382

    .line 174
    const/4 v15, 0x0

    const/16 v16, 0x7d0

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 175
    :cond_382
    const/16 v15, 0x7d0

    if-lt v14, v15, :cond_a3

    const/16 v15, 0x7d1

    if-lt v5, v15, :cond_a3

    const/16 v15, 0xbb8

    if-gt v5, v15, :cond_a3

    .line 176
    const/4 v15, 0x0

    const/16 v16, 0x898

    aput v16, v6, v15

    goto/16 :goto_a3

    .line 181
    :cond_395
    const/16 v15, 0x7e1

    if-ne v14, v15, :cond_3a4

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_3a4

    .line 182
    const/4 v15, 0x0

    const/16 v16, 0x3e8

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 183
    :cond_3a4
    const/16 v15, 0x7d9

    if-lt v14, v15, :cond_3b7

    const/16 v15, 0x7e0

    if-gt v14, v15, :cond_3b7

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_3b7

    .line 184
    const/4 v15, 0x0

    const/16 v16, 0x3e8

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 185
    :cond_3b7
    const/16 v15, 0x7d8

    if-ne v14, v15, :cond_3c6

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_3c6

    .line 186
    const/4 v15, 0x0

    const/16 v16, 0x5dc

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 187
    :cond_3c6
    const/16 v15, 0x7d7

    if-ne v14, v15, :cond_3d5

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_3d5

    .line 188
    const/4 v15, 0x0

    const/16 v16, 0x708

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 189
    :cond_3d5
    const/16 v15, 0x7d6

    if-ne v14, v15, :cond_3e4

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_3e4

    .line 190
    const/4 v15, 0x0

    const/16 v16, 0x834

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 191
    :cond_3e4
    const/16 v15, 0x7d5

    if-ne v14, v15, :cond_3f3

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_3f3

    .line 192
    const/4 v15, 0x0

    const/16 v16, 0x960

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 193
    :cond_3f3
    const/16 v15, 0x7d4

    if-ne v14, v15, :cond_402

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_402

    .line 194
    const/4 v15, 0x0

    const/16 v16, 0xa8c

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 195
    :cond_402
    const/16 v15, 0x7d3

    if-ne v14, v15, :cond_411

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_411

    .line 196
    const/4 v15, 0x0

    const/16 v16, 0xbb8

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 197
    :cond_411
    const/16 v15, 0x7d2

    if-ne v14, v15, :cond_420

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_420

    .line 198
    const/4 v15, 0x0

    const/16 v16, 0xce4

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 199
    :cond_420
    const/16 v15, 0x7d1

    if-ne v14, v15, :cond_42f

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_42f

    .line 200
    const/4 v15, 0x0

    const/16 v16, 0xe10

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 201
    :cond_42f
    const/16 v15, 0x7d0

    if-gt v14, v15, :cond_ba

    const/16 v15, 0xbb9

    if-lt v5, v15, :cond_ba

    .line 202
    const/4 v15, 0x0

    const/16 v16, 0xf3c

    aput v16, v6, v15

    goto/16 :goto_ba

    .line 212
    .restart local v3    # "carValueCostums":Ljava/lang/Double;
    .restart local v4    # "carValueCostumsVat":Ljava/lang/Double;
    :cond_43e
    const/16 v15, 0x2ef

    if-lt v5, v15, :cond_451

    const/16 v15, 0x384

    if-gt v5, v15, :cond_451

    .line 213
    const-wide v16, 0x4051666666666666L    # 69.6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e

    .line 214
    :cond_451
    const/16 v15, 0x385

    if-lt v5, v15, :cond_464

    const/16 v15, 0x44c

    if-gt v5, v15, :cond_464

    .line 215
    const-wide v16, 0x405575c28f5c28f6L    # 85.84

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e

    .line 216
    :cond_464
    const/16 v15, 0x44d

    if-lt v5, v15, :cond_477

    const/16 v15, 0x514

    if-gt v5, v15, :cond_477

    .line 217
    const-wide v16, 0x4058a66666666666L    # 98.6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e

    .line 218
    :cond_477
    const/16 v15, 0x515

    if-lt v5, v15, :cond_48a

    const/16 v15, 0x5dc

    if-gt v5, v15, :cond_48a

    .line 219
    const-wide v16, 0x405aae147ae147aeL    # 106.72

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e

    .line 220
    :cond_48a
    const/16 v15, 0x5dd

    if-lt v5, v15, :cond_49d

    const/16 v15, 0x6a4

    if-gt v5, v15, :cond_49d

    .line 221
    const-wide v16, 0x405e733333333333L    # 121.8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e

    .line 222
    :cond_49d
    const/16 v15, 0x6a5

    if-lt v5, v15, :cond_4b0

    const/16 v15, 0x79e

    if-gt v5, v15, :cond_4b0

    .line 223
    const-wide v16, 0x4062d9999999999aL    # 150.8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e

    .line 224
    :cond_4b0
    const/16 v15, 0x79f

    if-lt v5, v15, :cond_4c3

    const/16 v15, 0x8ca

    if-gt v5, v15, :cond_4c3

    .line 225
    const-wide v16, 0x40669eb851eb851fL    # 180.96

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e

    .line 226
    :cond_4c3
    const/16 v15, 0x8cb

    if-lt v5, v15, :cond_4d6

    const/16 v15, 0xa8c

    if-gt v5, v15, :cond_4d6

    .line 227
    const-wide v16, 0x406a19999999999aL    # 208.8

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e

    .line 228
    :cond_4d6
    const/16 v15, 0xa8d

    if-lt v5, v15, :cond_11e

    .line 229
    const-wide v16, 0x406e733333333333L    # 243.6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto/16 :goto_11e
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->setContentView(I)V

    .line 32
    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->switch1:Landroid/widget/Switch;

    .line 34
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->kalkulo:Landroid/widget/Button;

    .line 35
    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->reset:Landroid/widget/Button;

    .line 36
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText4:Landroid/widget/EditText;

    .line 38
    const v0, 0x7f0b0061

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->editText5:Landroid/widget/EditText;

    .line 39
    const v0, 0x7f0b0064

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView12:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView13:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView14:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView15:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView16:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView17:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->textView18:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->kalkulo:Landroid/widget/Button;

    new-instance v1, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;

    invoke-direct {v1, p0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$1;-><init>(Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;->reset:Landroid/widget/Button;

    new-instance v1, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$2;

    invoke-direct {v1, p0}, Lcom/regjisrimi/korabgashi/regjistrimi/doganimi$2;-><init>(Lcom/regjisrimi/korabgashi/regjistrimi/doganimi;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method
