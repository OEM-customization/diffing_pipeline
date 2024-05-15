.class Ljava/text/PatternEntry$Parser;
.super Ljava/lang/Object;
.source "PatternEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/PatternEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parser"
.end annotation


# instance fields
.field private blacklist i:I

.field private blacklist newChars:Ljava/lang/StringBuffer;

.field private blacklist newExtension:Ljava/lang/StringBuffer;

.field private blacklist pattern:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    .line 287
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    .line 203
    iput-object p1, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    .line 204
    const/4 v0, 0x0

    iput v0, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 205
    return-void
.end method


# virtual methods
.method public blacklist next()Ljava/text/PatternEntry;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 208
    const/4 v0, -0x1

    .line 210
    .local v0, "newStrength":I
    iget-object v1, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    iget-object v1, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 213
    const/4 v1, 0x1

    .line 214
    .local v1, "inChars":Z
    const/4 v2, 0x0

    .line 216
    .local v2, "inQuote":Z
    :goto_e
    iget v3, p0, Ljava/text/PatternEntry$Parser;->i:I

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    const/4 v6, -0x1

    if-ge v3, v4, :cond_126

    .line 217
    iget-object v3, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 218
    .local v3, "ch":C
    const/16 v4, 0x27

    if-eqz v2, :cond_4b

    .line 219
    if-ne v3, v4, :cond_2c

    .line 220
    const/4 v2, 0x0

    goto/16 :goto_11e

    .line 222
    :cond_2c
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_3b

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_11e

    .line 223
    :cond_3b
    if-eqz v1, :cond_44

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_11e

    .line 224
    :cond_44
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_11e

    .line 226
    :cond_4b
    const/16 v7, 0x9

    if-eq v3, v7, :cond_11d

    if-eq v3, v5, :cond_11d

    const/16 v7, 0xc

    if-eq v3, v7, :cond_11d

    const/16 v7, 0xd

    if-eq v3, v7, :cond_11d

    const/16 v7, 0x20

    if-eq v3, v7, :cond_11d

    const/16 v7, 0x2c

    if-eq v3, v7, :cond_118

    const/16 v7, 0x2f

    if-eq v3, v7, :cond_116

    const/16 v7, 0x26

    if-eq v3, v7, :cond_111

    if-eq v3, v4, :cond_e8

    packed-switch v3, :pswitch_data_170

    .line 251
    if-ne v0, v6, :cond_a3

    .line 252
    new-instance v4, Ljava/text/ParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing char (=,;<&) : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 255
    add-int/lit8 v9, v8, 0xa

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_8c

    .line 256
    iget v9, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/2addr v9, v5

    goto :goto_92

    :cond_8c
    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    .line 254
    :goto_92
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 259
    :cond_a3
    invoke-static {v3}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    move-result v4

    if-eqz v4, :cond_cb

    if-eqz v2, :cond_ac

    goto :goto_cb

    .line 260
    :cond_ac
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unquoted punctuation character : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x10

    .line 261
    invoke-static {v3, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 262
    :cond_cb
    :goto_cb
    if-eqz v1, :cond_d3

    .line 263
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11e

    .line 265
    :cond_d3
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11e

    .line 227
    :pswitch_d9
    if-eq v0, v6, :cond_dc

    goto :goto_126

    .line 228
    :cond_dc
    const/4 v0, 0x3

    goto :goto_11e

    .line 233
    :pswitch_de
    if-eq v0, v6, :cond_e1

    goto :goto_126

    .line 234
    :cond_e1
    const/4 v0, 0x0

    goto :goto_11e

    .line 231
    :pswitch_e3
    if-eq v0, v6, :cond_e6

    goto :goto_126

    .line 232
    :cond_e6
    const/4 v0, 0x1

    goto :goto_11e

    .line 244
    :cond_e8
    const/4 v2, 0x1

    .line 245
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 246
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_103

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11e

    .line 247
    :cond_103
    if-eqz v1, :cond_10b

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_11e

    .line 248
    :cond_10b
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    goto :goto_11e

    .line 235
    :cond_111
    if-eq v0, v6, :cond_114

    goto :goto_126

    .line 236
    :cond_114
    const/4 v0, -0x2

    goto :goto_11e

    .line 242
    :cond_116
    const/4 v1, 0x0

    goto :goto_11e

    .line 229
    :cond_118
    if-eq v0, v6, :cond_11b

    goto :goto_126

    .line 230
    :cond_11b
    const/4 v0, 0x2

    goto :goto_11e

    .line 241
    :cond_11d
    nop

    .line 269
    :goto_11e
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 270
    .end local v3    # "ch":C
    goto/16 :goto_e

    .line 271
    :cond_126
    :goto_126
    if-ne v0, v6, :cond_12a

    .line 272
    const/4 v3, 0x0

    return-object v3

    .line 273
    :cond_12a
    iget-object v3, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_165

    .line 274
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing chars (=,;<&): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v7, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 277
    add-int/lit8 v8, v7, 0xa

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_14e

    .line 278
    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/2addr v8, v5

    goto :goto_154

    :cond_14e
    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    .line 276
    :goto_154
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 282
    :cond_165
    new-instance v3, Ljava/text/PatternEntry;

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-direct {v3, v0, v4, v5}, Ljava/text/PatternEntry;-><init>(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    return-object v3

    nop

    :pswitch_data_170
    .packed-switch 0x3b
        :pswitch_e3
        :pswitch_de
        :pswitch_d9
    .end packed-switch
.end method
