.class Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
.super Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CI"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .prologue
    .line 4192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    .line 4193
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;)V
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .param p4, "-this3"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-void
.end method


# virtual methods
.method protected isEqual(CC)Z
    .registers 4
    .param p1, "c1"    # C
    .param p2, "c2"    # C

    .prologue
    .line 4202
    invoke-static {p1, p2}, Ljava/time/format/DateTimeParseContext;->charEqualsIgnoreCase(CC)Z

    move-result v0

    return v0
.end method

.method protected newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;
    .registers 5
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;
    .param p3, "child"    # Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;

    .prologue
    .line 4197
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)V

    return-object v0
.end method

.method protected bridge synthetic newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    .registers 5

    .prologue
    .line 4195
    invoke-virtual {p0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->newNode(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;)Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;

    move-result-object v0

    return-object v0
.end method

.method protected prefixOf(Ljava/lang/CharSequence;II)Z
    .registers 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "off"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v7, 0x0

    .line 4207
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    .line 4208
    .local v0, "len":I
    sub-int v5, p3, p2

    if-le v0, v5, :cond_c

    .line 4209
    return v7

    .line 4211
    :cond_c
    const/4 v3, 0x0

    .local v3, "off0":I
    move v4, v3

    .end local v3    # "off0":I
    .local v4, "off0":I
    move v1, v0

    .end local v0    # "len":I
    .local v1, "len":I
    move v2, p2

    .line 4212
    .end local p2    # "off":I
    .local v2, "off":I
    :goto_10
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "len":I
    .restart local v0    # "len":I
    if-lez v1, :cond_2d

    .line 4213
    iget-object v5, p0, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->key:Ljava/lang/String;

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "off0":I
    .restart local v3    # "off0":I
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 p2, v2, 0x1

    .end local v2    # "off":I
    .restart local p2    # "off":I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder$PrefixTree$CI;->isEqual(CC)Z

    move-result v5

    if-nez v5, :cond_29

    .line 4214
    return v7

    :cond_29
    move v4, v3

    .end local v3    # "off0":I
    .restart local v4    # "off0":I
    move v1, v0

    .end local v0    # "len":I
    .restart local v1    # "len":I
    move v2, p2

    .end local p2    # "off":I
    .restart local v2    # "off":I
    goto :goto_10

    .line 4217
    .end local v1    # "len":I
    .restart local v0    # "len":I
    :cond_2d
    const/4 v5, 0x1

    return v5
.end method
