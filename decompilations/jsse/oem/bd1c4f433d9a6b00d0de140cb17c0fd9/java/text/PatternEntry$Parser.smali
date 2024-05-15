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
.field private i:I

.field private newChars:Ljava/lang/StringBuffer;

.field private newExtension:Ljava/lang/StringBuffer;

.field private pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
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
.method public next()Ljava/text/PatternEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, -0x1

    .line 208
    const/4 v3, -0x1

    .line 210
    .local v3, "newStrength":I
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 211
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 213
    const/4 v1, 0x1

    .line 214
    .local v1, "inChars":Z
    const/4 v2, 0x0

    .line 216
    .local v2, "inQuote":Z
    :goto_f
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_86

    .line 217
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 218
    .local v0, "ch":C
    if-eqz v2, :cond_4b

    .line 219
    const/16 v4, 0x27

    if-ne v0, v4, :cond_2f

    .line 220
    const/4 v2, 0x0

    .line 269
    :goto_28
    :sswitch_28
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    goto :goto_f

    .line 222
    :cond_2f
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_3d

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 223
    :cond_3d
    if-eqz v1, :cond_45

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 224
    :cond_45
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_28

    .line 226
    :cond_4b
    sparse-switch v0, :sswitch_data_158

    .line 251
    if-ne v3, v6, :cond_d1

    .line 252
    new-instance v5, Ljava/text/ParseException;

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "missing char (=,;<&) : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 254
    iget-object v7, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 255
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0xa

    iget-object v9, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_ca

    .line 256
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0xa

    .line 254
    :goto_72
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 257
    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 252
    invoke-direct {v5, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 227
    :sswitch_84
    if-eq v3, v6, :cond_8a

    .line 271
    .end local v0    # "ch":C
    :cond_86
    if-ne v3, v6, :cond_10b

    .line 272
    const/4 v4, 0x0

    return-object v4

    .line 228
    .restart local v0    # "ch":C
    :cond_8a
    const/4 v3, 0x3

    goto :goto_28

    .line 229
    :sswitch_8c
    if-ne v3, v6, :cond_86

    .line 230
    const/4 v3, 0x2

    goto :goto_28

    .line 231
    :sswitch_90
    if-ne v3, v6, :cond_86

    .line 232
    const/4 v3, 0x1

    goto :goto_28

    .line 233
    :sswitch_94
    if-ne v3, v6, :cond_86

    .line 234
    const/4 v3, 0x0

    goto :goto_28

    .line 235
    :sswitch_98
    if-ne v3, v6, :cond_86

    .line 236
    const/4 v3, -0x2

    goto :goto_28

    .line 242
    :sswitch_9c
    const/4 v1, 0x0

    goto :goto_28

    .line 244
    :sswitch_9e
    const/4 v2, 0x1

    .line 245
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 246
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_ba

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_28

    .line 247
    :cond_ba
    if-eqz v1, :cond_c3

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_28

    .line 248
    :cond_c3
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_28

    .line 256
    :cond_ca
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_72

    .line 259
    :cond_d1
    invoke-static {v0}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    move-result v4

    if-eqz v4, :cond_fb

    if-nez v2, :cond_fb

    .line 260
    new-instance v4, Ljava/text/ParseException;

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unquoted punctuation character : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 260
    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 262
    :cond_fb
    if-eqz v1, :cond_104

    .line 263
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_28

    .line 265
    :cond_104
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_28

    .line 273
    .end local v0    # "ch":C
    :cond_10b
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_14e

    .line 274
    new-instance v5, Ljava/text/ParseException;

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "missing chars (=,;<&): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 276
    iget-object v7, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 277
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0xa

    iget-object v9, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_147

    .line 278
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0xa

    .line 276
    :goto_135
    invoke-virtual {v7, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 275
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 274
    invoke-direct {v5, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 278
    :cond_147
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_135

    .line 282
    :cond_14e
    new-instance v4, Ljava/text/PatternEntry;

    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    iget-object v6, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-direct {v4, v3, v5, v6}, Ljava/text/PatternEntry;-><init>(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    return-object v4

    .line 226
    :sswitch_data_158
    .sparse-switch
        0x9 -> :sswitch_28
        0xa -> :sswitch_28
        0xc -> :sswitch_28
        0xd -> :sswitch_28
        0x20 -> :sswitch_28
        0x26 -> :sswitch_98
        0x27 -> :sswitch_9e
        0x2c -> :sswitch_8c
        0x2f -> :sswitch_9c
        0x3b -> :sswitch_90
        0x3c -> :sswitch_94
        0x3d -> :sswitch_84
    .end sparse-switch
.end method
