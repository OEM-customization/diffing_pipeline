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
    .registers 11
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

    const/4 v5, -0x1

    if-ge v3, v4, :cond_10d

    .line 217
    iget-object v3, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 218
    .local v3, "ch":C
    if-eqz v2, :cond_49

    .line 219
    const/16 v4, 0x27

    if-ne v3, v4, :cond_2a

    .line 220
    const/4 v2, 0x0

    goto/16 :goto_105

    .line 222
    :cond_2a
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-nez v4, :cond_39

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_105

    .line 223
    :cond_39
    if-eqz v1, :cond_42

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_105

    .line 224
    :cond_42
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_105

    .line 226
    :cond_49
    sparse-switch v3, :sswitch_data_158

    .line 251
    if-ne v0, v5, :cond_d0

    .line 252
    new-instance v4, Ljava/text/ParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "missing char (=,;<&) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v7, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 255
    add-int/lit8 v8, v7, 0xa

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_b9

    .line 256
    iget v8, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v8, v8, 0xa

    goto :goto_bf

    .line 227
    :sswitch_6b
    if-eq v0, v5, :cond_6f

    goto/16 :goto_10d

    .line 228
    :cond_6f
    const/4 v0, 0x3

    goto/16 :goto_105

    .line 233
    :sswitch_72
    if-eq v0, v5, :cond_76

    goto/16 :goto_10d

    .line 234
    :cond_76
    const/4 v0, 0x0

    goto/16 :goto_105

    .line 231
    :sswitch_79
    if-eq v0, v5, :cond_7d

    goto/16 :goto_10d

    .line 232
    :cond_7d
    const/4 v0, 0x1

    goto/16 :goto_105

    .line 242
    :sswitch_80
    const/4 v1, 0x0

    goto/16 :goto_105

    .line 229
    :sswitch_83
    if-eq v0, v5, :cond_87

    goto/16 :goto_10d

    .line 230
    :cond_87
    const/4 v0, 0x2

    goto/16 :goto_105

    .line 244
    :sswitch_8a
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

    if-nez v4, :cond_a5

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_105

    .line 247
    :cond_a5
    if-eqz v1, :cond_ad

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_105

    .line 248
    :cond_ad
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 249
    goto :goto_105

    .line 235
    :sswitch_b3
    if-eq v0, v5, :cond_b6

    goto :goto_10d

    .line 236
    :cond_b6
    const/4 v0, -0x2

    goto :goto_105

    .line 241
    :sswitch_b8
    goto :goto_105

    .line 256
    :cond_b9
    iget-object v8, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    .line 254
    :goto_bf
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-direct {v4, v5, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v4

    .line 259
    :cond_d0
    invoke-static {v3}, Ljava/text/PatternEntry;->isSpecialChar(C)Z

    move-result v4

    if-eqz v4, :cond_f8

    if-eqz v2, :cond_d9

    goto :goto_f8

    .line 260
    :cond_d9
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
    :cond_f8
    :goto_f8
    if-eqz v1, :cond_100

    .line 263
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_105

    .line 265
    :cond_100
    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 269
    :goto_105
    iget v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 270
    .end local v3    # "ch":C
    goto/16 :goto_e

    .line 271
    :cond_10d
    :goto_10d
    if-ne v0, v5, :cond_111

    .line 272
    const/4 v3, 0x0

    return-object v3

    .line 273
    :cond_111
    iget-object v3, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_14d

    .line 274
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missing chars (=,;<&): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    iget v6, p0, Ljava/text/PatternEntry$Parser;->i:I

    .line 277
    add-int/lit8 v7, v6, 0xa

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_136

    .line 278
    iget v7, p0, Ljava/text/PatternEntry$Parser;->i:I

    add-int/lit8 v7, v7, 0xa

    goto :goto_13c

    :cond_136
    iget-object v7, p0, Ljava/text/PatternEntry$Parser;->pattern:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 276
    :goto_13c
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Ljava/text/PatternEntry$Parser;->i:I

    invoke-direct {v3, v4, v5}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 282
    :cond_14d
    new-instance v3, Ljava/text/PatternEntry;

    iget-object v4, p0, Ljava/text/PatternEntry$Parser;->newChars:Ljava/lang/StringBuffer;

    iget-object v5, p0, Ljava/text/PatternEntry$Parser;->newExtension:Ljava/lang/StringBuffer;

    invoke-direct {v3, v0, v4, v5}, Ljava/text/PatternEntry;-><init>(ILjava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    return-object v3

    nop

    :sswitch_data_158
    .sparse-switch
        0x9 -> :sswitch_b8
        0xa -> :sswitch_b8
        0xc -> :sswitch_b8
        0xd -> :sswitch_b8
        0x20 -> :sswitch_b8
        0x26 -> :sswitch_b3
        0x27 -> :sswitch_8a
        0x2c -> :sswitch_83
        0x2f -> :sswitch_80
        0x3b -> :sswitch_79
        0x3c -> :sswitch_72
        0x3d -> :sswitch_6b
    .end sparse-switch
.end method
