.class Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;
.super Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LENIENT"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .prologue
    .line 4228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;)V

    .line 4229
    return-void
.end method

.method private isLenientChar(C)Z
    .registers 4
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    .line 4237
    const/16 v1, 0x20

    if-eq p1, v1, :cond_9

    const/16 v1, 0x5f

    if-ne p1, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x2f

    if-eq p1, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 15
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/4 v11, 0x0

    .line 4260
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    .line 4261
    .local v6, "off":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4262
    .local v1, "end":I
    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->key:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 4263
    .local v5, "len":I
    const/4 v3, 0x0

    .local v3, "koff":I
    move v4, v3

    .end local v3    # "koff":I
    .local v4, "koff":I
    move v7, v6

    .line 4264
    .end local v6    # "off":I
    .local v7, "off":I
    :goto_12
    if-ge v4, v5, :cond_3c

    if-ge v7, v1, :cond_3c

    .line 4265
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 4266
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "off":I
    .restart local v6    # "off":I
    move v7, v6

    .line 4267
    .end local v6    # "off":I
    .restart local v7    # "off":I
    goto :goto_12

    .line 4269
    :cond_24
    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->key:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "koff":I
    .restart local v3    # "koff":I
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "off":I
    .restart local v6    # "off":I
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isEqual(CC)Z

    move-result v9

    if-nez v9, :cond_39

    .line 4270
    return-object v11

    :cond_39
    move v4, v3

    .end local v3    # "koff":I
    .restart local v4    # "koff":I
    move v7, v6

    .end local v6    # "off":I
    .restart local v7    # "off":I
    goto :goto_12

    .line 4273
    :cond_3c
    if-eq v4, v5, :cond_3f

    .line 4274
    return-object v11

    .line 4276
    :cond_3f
    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    if-eqz v9, :cond_73

    if-eq v7, v1, :cond_73

    .line 4277
    move v8, v7

    .line 4278
    .local v8, "off0":I
    :goto_46
    if-ge v8, v1, :cond_55

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-direct {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v9

    if-eqz v9, :cond_55

    .line 4279
    add-int/lit8 v8, v8, 0x1

    goto :goto_46

    .line 4281
    :cond_55
    if-ge v8, v1, :cond_73

    .line 4282
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->child:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4284
    .local v0, "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    :cond_59
    iget-char v9, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->c0:C

    invoke-interface {p1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {p0, v9, v10}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isEqual(CC)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 4285
    invoke-virtual {p2, v8}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4286
    invoke-virtual {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->match(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 4287
    .local v2, "found":Ljava/lang/String;
    if-eqz v2, :cond_73

    .line 4288
    return-object v2

    .line 4292
    .end local v2    # "found":Ljava/lang/String;
    :cond_6f
    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;->sibling:Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .line 4293
    if-nez v0, :cond_59

    .line 4296
    .end local v0    # "c":Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .end local v8    # "off0":I
    :cond_73
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 4297
    iget-object v9, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->value:Ljava/lang/String;

    return-object v9
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .prologue
    .line 4233
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5

    .prologue
    .line 4231
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object v0

    return-object v0
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 4241
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_42

    .line 4242
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 4243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4244
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 4245
    add-int/lit8 v0, v0, 0x1

    .line 4246
    :goto_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 4247
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$LENIENT;->isLenientChar(C)Z

    move-result v2

    if-nez v2, :cond_37

    .line 4248
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4250
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 4252
    :cond_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4241
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4255
    :cond_42
    return-object p1
.end method
