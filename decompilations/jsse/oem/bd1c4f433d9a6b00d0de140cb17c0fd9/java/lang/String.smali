.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$CaseInsensitiveComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hash:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    .line 139
    sput-object v0, Ljava/lang/String;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1133
    new-instance v0, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$CaseInsensitiveComparator;)V

    .line 1132
    sput-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 117
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(II[C)V
    .registers 6
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "value"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .prologue
    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BI)V
    .registers 5
    .param p1, "ascii"    # [B
    .param p2, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BIII)V
    .registers 7
    .param p1, "ascii"    # [B
    .param p2, "hibyte"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BIILjava/nio/charset/Charset;)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([C)V
    .registers 4
    .param p1, "value"    # [C

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([CII)V
    .registers 6
    .param p1, "value"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([III)V
    .registers 6
    .param p1, "codePoints"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [C

    .prologue
    .line 2894
    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromChars([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 2883
    invoke-static {p0, p1, p2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native doReplace(CC)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native fastIndexOf(II)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native fastSubstring(II)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2770
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2814
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 1673
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1674
    .local v6, "sourceLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    .line 1675
    .local v7, "targetLength":I
    if-lt p2, v6, :cond_11

    .line 1676
    if-nez v7, :cond_f

    .end local v6    # "sourceLength":I
    :goto_e
    return v6

    .restart local v6    # "sourceLength":I
    :cond_f
    move v6, v8

    goto :goto_e

    .line 1678
    :cond_11
    if-gez p2, :cond_14

    .line 1679
    const/4 p2, 0x0

    .line 1681
    :cond_14
    if-nez v7, :cond_17

    .line 1682
    return p2

    .line 1685
    :cond_17
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1686
    .local v1, "first":C
    sub-int v5, v6, v7

    .line 1688
    .local v5, "max":I
    move v2, p2

    .local v2, "i":I
    :goto_1e
    if-gt v2, v5, :cond_50

    .line 1690
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v9, v1, :cond_30

    .line 1691
    :cond_26
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v5, :cond_30

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v1, :cond_26

    .line 1695
    :cond_30
    if-gt v2, v5, :cond_4d

    .line 1696
    add-int/lit8 v3, v2, 0x1

    .line 1697
    .local v3, "j":I
    add-int v9, v3, v7

    add-int/lit8 v0, v9, -0x1

    .line 1698
    .local v0, "end":I
    const/4 v4, 0x1

    .local v4, "k":I
    :goto_39
    if-ge v3, v0, :cond_4a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1699
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1698
    if-ne v9, v10, :cond_4a

    .line 1699
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_39

    .line 1701
    :cond_4a
    if-ne v3, v0, :cond_4d

    .line 1703
    return v2

    .line 1688
    .end local v0    # "end":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 1707
    :cond_50
    return v8
.end method

.method static indexOf([CII[CIII)I
    .registers 16
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # [C
    .param p4, "targetOffset"    # I
    .param p5, "targetCount"    # I
    .param p6, "fromIndex"    # I

    .prologue
    const/4 v6, -0x1

    .line 1726
    if-lt p6, p2, :cond_8

    .line 1727
    if-nez p5, :cond_6

    .end local p2    # "sourceCount":I
    :goto_5
    return p2

    .restart local p2    # "sourceCount":I
    :cond_6
    move p2, v6

    goto :goto_5

    .line 1729
    :cond_8
    if-gez p6, :cond_b

    .line 1730
    const/4 p6, 0x0

    .line 1732
    :cond_b
    if-nez p5, :cond_e

    .line 1733
    return p6

    .line 1736
    :cond_e
    aget-char v1, p3, p4

    .line 1737
    .local v1, "first":C
    sub-int v7, p2, p5

    add-int v5, p1, v7

    .line 1739
    .local v5, "max":I
    add-int v2, p1, p6

    .local v2, "i":I
    :goto_16
    if-gt v2, v5, :cond_43

    .line 1741
    aget-char v7, p0, v2

    if-eq v7, v1, :cond_24

    .line 1742
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    if-gt v2, v5, :cond_24

    aget-char v7, p0, v2

    if-ne v7, v1, :cond_1c

    .line 1746
    :cond_24
    if-gt v2, v5, :cond_40

    .line 1747
    add-int/lit8 v3, v2, 0x1

    .line 1748
    .local v3, "j":I
    add-int v7, v3, p5

    add-int/lit8 v0, v7, -0x1

    .line 1749
    .local v0, "end":I
    add-int/lit8 v4, p4, 0x1

    .local v4, "k":I
    :goto_2e
    if-ge v3, v0, :cond_3b

    aget-char v7, p0, v3

    .line 1750
    aget-char v8, p3, v4

    .line 1749
    if-ne v7, v8, :cond_3b

    .line 1750
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 1752
    :cond_3b
    if-ne v3, v0, :cond_40

    .line 1754
    sub-int v6, v2, p1

    return v6

    .line 1739
    .end local v0    # "end":I
    .end local v3    # "j":I
    .end local v4    # "k":I
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    .line 1758
    :cond_43
    return v6
.end method

.method private indexOfSupplementary(II)I
    .registers 8
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .prologue
    .line 1516
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1517
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    .line 1518
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v2

    .line 1519
    .local v2, "lo":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1520
    .local v3, "max":I
    move v1, p2

    .local v1, "i":I
    :goto_15
    if-ge v1, v3, :cond_29

    .line 1521
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_26

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_26

    .line 1522
    return v1

    .line 1520
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 1526
    .end local v0    # "hi":C
    .end local v1    # "i":I
    .end local v2    # "lo":C
    .end local v3    # "max":I
    :cond_29
    const/4 v4, -0x1

    return v4
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 6
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable",
            "<+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2504
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2505
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2506
    new-instance v2, Ljava/util/StringJoiner;

    invoke-direct {v2, p0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2507
    .local v2, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cs$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 2508
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {v2, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_f

    .line 2510
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_1f
    invoke-virtual {v2}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static varargs join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "elements"    # [Ljava/lang/CharSequence;

    .prologue
    .line 2455
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2456
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2458
    new-instance v1, Ljava/util/StringJoiner;

    invoke-direct {v1, p0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2459
    .local v1, "joiner":Ljava/util/StringJoiner;
    const/4 v2, 0x0

    array-length v3, p1

    :goto_d
    if-ge v2, v3, :cond_17

    aget-object v0, p1, v2

    .line 2460
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2459
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2462
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_17
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 18
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    .line 1816
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    .line 1817
    .local v8, "sourceLength":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    .line 1818
    .local v12, "targetLength":I
    sub-int v7, v8, v12

    .line 1819
    .local v7, "rightIndex":I
    if-gez p2, :cond_e

    .line 1820
    const/4 v13, -0x1

    return v13

    .line 1822
    :cond_e
    move/from16 v0, p2

    if-le v0, v7, :cond_14

    .line 1823
    move/from16 p2, v7

    .line 1826
    :cond_14
    if-nez v12, :cond_17

    .line 1827
    return p2

    .line 1830
    :cond_17
    add-int/lit8 v11, v12, -0x1

    .line 1831
    .local v11, "strLastIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1832
    .local v10, "strLastChar":C
    add-int/lit8 v6, v12, -0x1

    .line 1833
    .local v6, "min":I
    add-int v1, v6, p2

    .line 1837
    .local v1, "i":I
    :goto_23
    if-lt v1, v6, :cond_2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v10, :cond_2e

    .line 1838
    add-int/lit8 v1, v1, -0x1

    goto :goto_23

    .line 1840
    :cond_2e
    if-ge v1, v6, :cond_32

    .line 1841
    const/4 v13, -0x1

    return v13

    .line 1843
    :cond_32
    add-int/lit8 v2, v1, -0x1

    .line 1844
    .local v2, "j":I
    add-int/lit8 v13, v12, -0x1

    sub-int v9, v2, v13

    .line 1845
    .local v9, "start":I
    add-int/lit8 v4, v11, -0x1

    .local v4, "k":I
    move v5, v4

    .end local v4    # "k":I
    .local v5, "k":I
    move v3, v2

    .line 1847
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_3c
    if-le v3, v9, :cond_54

    .line 1848
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v13

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v13, v14, :cond_51

    .line 1849
    add-int/lit8 v1, v1, -0x1

    .line 1850
    goto :goto_23

    :cond_51
    move v5, v4

    .end local v4    # "k":I
    .restart local v5    # "k":I
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_3c

    .line 1853
    :cond_54
    add-int/lit8 v13, v9, 0x1

    return v13
.end method

.method static lastIndexOf([CII[CIII)I
    .registers 20
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # [C
    .param p4, "targetOffset"    # I
    .param p5, "targetCount"    # I
    .param p6, "fromIndex"    # I

    .prologue
    .line 1877
    sub-int v7, p2, p5

    .line 1878
    .local v7, "rightIndex":I
    if-gez p6, :cond_6

    .line 1879
    const/4 v11, -0x1

    return v11

    .line 1881
    :cond_6
    move/from16 v0, p6

    if-le v0, v7, :cond_c

    .line 1882
    move/from16 p6, v7

    .line 1885
    :cond_c
    if-nez p5, :cond_f

    .line 1886
    return p6

    .line 1889
    :cond_f
    add-int v11, p4, p5

    add-int/lit8 v10, v11, -0x1

    .line 1890
    .local v10, "strLastIndex":I
    aget-char v9, p3, v10

    .line 1891
    .local v9, "strLastChar":C
    add-int v11, p1, p5

    add-int/lit8 v6, v11, -0x1

    .line 1892
    .local v6, "min":I
    add-int v1, v6, p6

    .line 1896
    .local v1, "i":I
    :goto_1b
    if-lt v1, v6, :cond_24

    aget-char v11, p0, v1

    if-eq v11, v9, :cond_24

    .line 1897
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 1899
    :cond_24
    if-ge v1, v6, :cond_28

    .line 1900
    const/4 v11, -0x1

    return v11

    .line 1902
    :cond_28
    add-int/lit8 v2, v1, -0x1

    .line 1903
    .local v2, "j":I
    add-int/lit8 v11, p5, -0x1

    sub-int v8, v2, v11

    .line 1904
    .local v8, "start":I
    add-int/lit8 v4, v10, -0x1

    .local v4, "k":I
    move v5, v4

    .end local v4    # "k":I
    .local v5, "k":I
    move v3, v2

    .line 1906
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_32
    if-le v3, v8, :cond_44

    .line 1907
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aget-char v11, p0, v3

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "k":I
    .restart local v4    # "k":I
    aget-char v12, p3, v5

    if-eq v11, v12, :cond_41

    .line 1908
    add-int/lit8 v1, v1, -0x1

    .line 1909
    goto :goto_1b

    :cond_41
    move v5, v4

    .end local v4    # "k":I
    .restart local v5    # "k":I
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_32

    .line 1912
    :cond_44
    sub-int v11, v8, p1

    add-int/lit8 v11, v11, 0x1

    return v11
.end method

.method private lastIndexOfSupplementary(II)I
    .registers 7
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .prologue
    .line 1610
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1611
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    .line 1612
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v2

    .line 1613
    .local v2, "lo":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1614
    .local v1, "i":I
    :goto_18
    if-ltz v1, :cond_2c

    .line 1615
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_29

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_29

    .line 1616
    return v1

    .line 1614
    :cond_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 1620
    .end local v0    # "hi":C
    .end local v1    # "i":I
    .end local v2    # "lo":C
    :cond_2c
    const/4 v3, -0x1

    return v3
.end method

.method private nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z
    .registers 8
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;

    .prologue
    const/4 v5, 0x0

    .line 983
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->getValue()[C

    move-result-object v2

    .line 984
    .local v2, "v2":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 985
    .local v1, "n":I
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v3

    if-eq v1, v3, :cond_10

    .line 986
    return v5

    .line 988
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_1f

    .line 989
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-char v4, v2, v0

    if-eq v3, v4, :cond_1c

    .line 990
    return v5

    .line 988
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 993
    :cond_1f
    const/4 v3, 0x1

    return v3
.end method

.method public static valueOf(C)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # C

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2918
    new-array v0, v2, [C

    aput-char p0, v0, v1

    invoke-static {v1, v2, v0}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 2974
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 2960
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 2932
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .registers 4
    .param p0, "l"    # J

    .prologue
    .line 2946
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2827
    if-nez p0, :cond_6

    const-string/jumbo v0, "null"

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # Z

    .prologue
    .line 2906
    if-eqz p0, :cond_6

    const-string/jumbo v0, "true"

    :goto_5
    return-object v0

    :cond_6
    const-string/jumbo v0, "false"

    goto :goto_5
.end method

.method public static valueOf([C)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [C

    .prologue
    .line 2841
    invoke-static {p0}, Ljava/lang/StringFactory;->newStringFromChars([C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 2865
    invoke-static {p0, p1, p2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public native charAt(I)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public codePointAt(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 607
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p1, v0, :cond_e

    .line 608
    :cond_8
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 610
    :cond_e
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 636
    add-int/lit8 v0, p1, -0x1

    .line 637
    .local v0, "i":I
    if-ltz v0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_10

    .line 638
    :cond_a
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 640
    :cond_10
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    return v1
.end method

.method public codePointCount(II)I
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 665
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_e

    .line 666
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 665
    :cond_e
    if-gt p1, p2, :cond_8

    .line 668
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .prologue
    .line 1076
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native compareTo(Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1187
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public native concat(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 2126
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .registers 8
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x0

    .line 1014
    instance-of v3, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v3, :cond_1e

    .line 1015
    instance-of v3, p1, Ljava/lang/StringBuffer;

    if-eqz v3, :cond_17

    .line 1016
    monitor-enter p1

    .line 1017
    :try_start_a
    move-object v0, p1

    check-cast v0, Ljava/lang/AbstractStringBuilder;

    move-object v3, v0

    invoke-direct {p0, v3}, Ljava/lang/String;->nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_14

    move-result v3

    monitor-exit p1

    return v3

    .line 1016
    :catchall_14
    move-exception v3

    monitor-exit p1

    throw v3

    .line 1020
    :cond_17
    check-cast p1, Ljava/lang/AbstractStringBuilder;

    .end local p1    # "cs":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Ljava/lang/String;->nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z

    move-result v3

    return v3

    .line 1024
    .restart local p1    # "cs":Ljava/lang/CharSequence;
    :cond_1e
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 1025
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 1028
    :cond_27
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1029
    .local v2, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_32

    .line 1030
    return v5

    .line 1032
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v2, :cond_43

    .line 1033
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_40

    .line 1034
    return v5

    .line 1032
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1037
    :cond_43
    const/4 v3, 0x1

    return v3
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public endsWith(Ljava/lang/String;)Z
    .registers 4
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 1391
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "anObject"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 944
    if-ne p0, p1, :cond_5

    .line 945
    return v7

    .line 947
    :cond_5
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2c

    move-object v0, p1

    .line 948
    check-cast v0, Ljava/lang/String;

    .line 949
    .local v0, "anotherString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 950
    .local v2, "n":I
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_2c

    .line 951
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .line 952
    .end local v2    # "n":I
    .local v3, "n":I
    :goto_18
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "n":I
    .restart local v2    # "n":I
    if-eqz v3, :cond_2b

    .line 953
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_27

    .line 954
    return v6

    .line 955
    :cond_27
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "n":I
    .restart local v3    # "n":I
    goto :goto_18

    .line 957
    .end local v3    # "n":I
    .restart local v2    # "n":I
    :cond_2b
    return v7

    .line 960
    .end local v0    # "anotherString":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2c
    return v6
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 8
    .param p1, "anotherString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1069
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 1070
    .local v5, "len":I
    if-ne p0, p1, :cond_9

    :goto_8
    return v1

    .line 1071
    :cond_9
    if-eqz p1, :cond_19

    .line 1072
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v5, :cond_19

    move-object v0, p0

    move-object v3, p1

    move v4, v2

    .line 1073
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    goto :goto_8

    :cond_19
    move v1, v2

    .line 1071
    goto :goto_8
.end method

.method public getBytes(II[BI)V
    .registers 12
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [B
    .param p4, "dstBegin"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 825
    if-gez p1, :cond_8

    .line 826
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v5, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 828
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-le p2, v5, :cond_14

    .line 829
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v5, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 831
    :cond_14
    if-le p1, p2, :cond_1e

    .line 832
    new-instance v5, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v6, p2, p1

    invoke-direct {v5, p0, v6}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 835
    :cond_1e
    move v2, p4

    .line 836
    .local v2, "j":I
    move v4, p2

    .line 837
    .local v4, "n":I
    move v0, p1

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    move v3, v2

    .line 839
    .end local v2    # "j":I
    .local v3, "j":I
    :goto_23
    if-ge v1, p2, :cond_33

    .line 840
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_23

    .line 842
    :cond_33
    return-void
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 925
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .registers 3
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 866
    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 867
    :cond_8
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .registers 8
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v5, 0x0

    .line 889
    if-nez p1, :cond_c

    .line 890
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "charset == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 893
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 894
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 896
    invoke-static {p0, v5, v2}, Llibcore/util/CharsetUtils;->toUtf8Bytes(Ljava/lang/String;II)[B

    move-result-object v4

    return-object v4

    .line 897
    :cond_22
    const-string/jumbo v4, "ISO-8859-1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 898
    invoke-static {p0, v5, v2}, Llibcore/util/CharsetUtils;->toIsoLatin1Bytes(Ljava/lang/String;II)[B

    move-result-object v4

    return-object v4

    .line 899
    :cond_30
    const-string/jumbo v4, "US-ASCII"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 900
    invoke-static {p0, v5, v2}, Llibcore/util/CharsetUtils;->toAsciiBytes(Ljava/lang/String;II)[B

    move-result-object v4

    return-object v4

    .line 901
    :cond_3e
    const-string/jumbo v4, "UTF-16BE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 902
    invoke-static {p0, v5, v2}, Llibcore/util/CharsetUtils;->toBigEndianUtf16Bytes(Ljava/lang/String;II)[B

    move-result-object v4

    return-object v4

    .line 905
    :cond_4c
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 906
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v1, v4, [B

    .line 907
    .local v1, "bytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 908
    return-object v1
.end method

.method public getChars(II[CI)V
    .registers 9
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .prologue
    .line 737
    if-nez p3, :cond_b

    .line 738
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "dst == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 741
    :cond_b
    if-gez p1, :cond_13

    .line 742
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 744
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_1f

    .line 745
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 748
    :cond_1f
    sub-int v0, p2, p1

    .line 749
    .local v0, "n":I
    if-ge p2, p1, :cond_29

    .line 750
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v1

    .line 753
    :cond_29
    if-gez p4, :cond_45

    .line 754
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dstBegin < 0. dstBegin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 758
    :cond_45
    array-length v1, p3

    if-le p4, v1, :cond_6e

    .line 759
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 760
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dstBegin > dst.length. dstBegin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 759
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 762
    :cond_6e
    array-length v1, p3

    sub-int/2addr v1, p4

    if-le v0, v1, :cond_a3

    .line 763
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "n > dst.length - dstBegin. n="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dst.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 765
    const-string/jumbo v3, "dstBegin="

    .line 764
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 768
    :cond_a3
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 769
    return-void
.end method

.method getChars([CI)V
    .registers 5
    .param p1, "dst"    # [C
    .param p2, "dstBegin"    # I

    .prologue
    .line 703
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 704
    return-void
.end method

.method native getCharsNoCheck(II[CI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 1408
    iget v0, p0, Ljava/lang/String;->hash:I

    .line 1409
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1410
    .local v2, "len":I
    if-nez v0, :cond_1a

    if-lez v2, :cond_1a

    .line 1411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v2, :cond_18

    .line 1412
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 1411
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1414
    :cond_18
    iput v0, p0, Ljava/lang/String;->hash:I

    .line 1416
    .end local v1    # "i":I
    :cond_1a
    return v0
.end method

.method public indexOf(I)I
    .registers 3
    .param p1, "ch"    # I

    .prologue
    .line 1444
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public indexOf(II)I
    .registers 7
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 1487
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1488
    .local v1, "max":I
    if-gez p2, :cond_16

    .line 1489
    const/4 p2, 0x0

    .line 1495
    :cond_8
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_1d

    .line 1498
    move v0, p2

    .local v0, "i":I
    :goto_d
    if-ge v0, v1, :cond_1c

    .line 1499
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_19

    .line 1500
    return v0

    .line 1490
    .end local v0    # "i":I
    :cond_16
    if-lt p2, v1, :cond_8

    .line 1492
    return v3

    .line 1498
    .restart local v0    # "i":I
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1503
    :cond_1c
    return v3

    .line 1505
    .end local v0    # "i":I
    :cond_1d
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v2

    return v2
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1638
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    .line 1658
    invoke-static {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public native intern()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 560
    iget v1, p0, Ljava/lang/String;->count:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public lastIndexOf(I)I
    .registers 3
    .param p1, "ch"    # I

    .prologue
    .line 1553
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(II)I
    .registers 5
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .prologue
    .line 1591
    const/high16 v1, 0x10000

    if-ge p1, v1, :cond_1c

    .line 1594
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1595
    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_1a

    .line 1596
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_17

    .line 1597
    return v0

    .line 1595
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1600
    :cond_1a
    const/4 v1, -0x1

    return v1

    .line 1602
    .end local v0    # "i":I
    :cond_1c
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v1

    return v1
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 1777
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .prologue
    .line 1797
    invoke-static {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public length()I
    .registers 3

    .prologue
    .line 540
    const/4 v0, 0x1

    .line 544
    .local v0, "STRING_COMPRESSION_ENABLED":Z
    iget v1, p0, Ljava/lang/String;->count:I

    ushr-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 2114
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public offsetByCodePoints(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .prologue
    .line 692
    if-ltz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_e

    .line 693
    :cond_8
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 695
    :cond_e
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .registers 19
    .param p1, "toffset"    # I
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .prologue
    .line 1224
    move v5, p1

    .line 1225
    .local v5, "to":I
    move/from16 v3, p3

    .line 1227
    .local v3, "po":I
    if-ltz p3, :cond_7

    if-gez p1, :cond_9

    .line 1230
    :cond_7
    const/4 v7, 0x0

    return v7

    .line 1228
    :cond_9
    int-to-long v8, p1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    int-to-long v10, v7

    move/from16 v0, p4

    int-to-long v12, v0

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gtz v7, :cond_7

    .line 1229
    move/from16 v0, p3

    int-to-long v8, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    int-to-long v10, v7

    move/from16 v0, p4

    int-to-long v12, v0

    sub-long/2addr v10, v12

    cmp-long v7, v8, v10

    if-gtz v7, :cond_7

    move v4, v3

    .end local v3    # "po":I
    .local v4, "po":I
    move v6, v5

    .end local v5    # "to":I
    .local v6, "to":I
    move/from16 v2, p4

    .line 1232
    .end local p4    # "len":I
    .local v2, "len":I
    :goto_2b
    add-int/lit8 p4, v2, -0x1

    .end local v2    # "len":I
    .restart local p4    # "len":I
    if-lez v2, :cond_46

    .line 1233
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "to":I
    .restart local v5    # "to":I
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "po":I
    .restart local v3    # "po":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_41

    .line 1234
    const/4 v7, 0x0

    return v7

    :cond_41
    move v4, v3

    .end local v3    # "po":I
    .restart local v4    # "po":I
    move v6, v5

    .end local v5    # "to":I
    .restart local v6    # "to":I
    move/from16 v2, p4

    .end local p4    # "len":I
    .restart local v2    # "len":I
    goto :goto_2b

    .line 1237
    .end local v2    # "len":I
    .restart local p4    # "len":I
    :cond_46
    const/4 v7, 0x1

    return v7
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .registers 24
    .param p1, "ignoreCase"    # Z
    .param p2, "toffset"    # I
    .param p3, "other"    # Ljava/lang/String;
    .param p4, "ooffset"    # I
    .param p5, "len"    # I

    .prologue
    .line 1292
    move/from16 v7, p2

    .line 1293
    .local v7, "to":I
    move/from16 v5, p4

    .line 1295
    .local v5, "po":I
    if-ltz p4, :cond_8

    if-gez p2, :cond_a

    .line 1298
    :cond_8
    const/4 v11, 0x0

    return v11

    .line 1296
    :cond_a
    move/from16 v0, p2

    int-to-long v12, v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    int-to-long v14, v11

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-gtz v11, :cond_8

    .line 1297
    move/from16 v0, p4

    int-to-long v12, v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    int-to-long v14, v11

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    cmp-long v11, v12, v14

    if-gtz v11, :cond_8

    move v6, v5

    .end local v5    # "po":I
    .local v6, "po":I
    move v8, v7

    .end local v7    # "to":I
    .local v8, "to":I
    move/from16 v4, p5

    .line 1300
    .end local p5    # "len":I
    .local v4, "len":I
    :goto_34
    add-int/lit8 p5, v4, -0x1

    .end local v4    # "len":I
    .restart local p5    # "len":I
    if-lez v4, :cond_71

    .line 1301
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "to":I
    .restart local v7    # "to":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1302
    .local v2, "c1":C
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "po":I
    .restart local v5    # "po":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1303
    .local v3, "c2":C
    if-ne v2, v3, :cond_4f

    move v6, v5

    .end local v5    # "po":I
    .restart local v6    # "po":I
    move v8, v7

    .end local v7    # "to":I
    .restart local v8    # "to":I
    move/from16 v4, p5

    .line 1304
    .end local p5    # "len":I
    .restart local v4    # "len":I
    goto :goto_34

    .line 1306
    .end local v4    # "len":I
    .end local v6    # "po":I
    .end local v8    # "to":I
    .restart local v5    # "po":I
    .restart local v7    # "to":I
    .restart local p5    # "len":I
    :cond_4f
    if-eqz p1, :cond_6f

    .line 1311
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    .line 1312
    .local v9, "u1":C
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    .line 1313
    .local v10, "u2":C
    if-ne v9, v10, :cond_60

    move v6, v5

    .end local v5    # "po":I
    .restart local v6    # "po":I
    move v8, v7

    .end local v7    # "to":I
    .restart local v8    # "to":I
    move/from16 v4, p5

    .line 1314
    .end local p5    # "len":I
    .restart local v4    # "len":I
    goto :goto_34

    .line 1320
    .end local v4    # "len":I
    .end local v6    # "po":I
    .end local v8    # "to":I
    .restart local v5    # "po":I
    .restart local v7    # "to":I
    .restart local p5    # "len":I
    :cond_60
    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v11

    invoke-static {v10}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v12

    if-ne v11, v12, :cond_6f

    move v6, v5

    .end local v5    # "po":I
    .restart local v6    # "po":I
    move v8, v7

    .end local v7    # "to":I
    .restart local v8    # "to":I
    move/from16 v4, p5

    .line 1321
    .end local p5    # "len":I
    .restart local v4    # "len":I
    goto :goto_34

    .line 1324
    .end local v4    # "len":I
    .end local v6    # "po":I
    .end local v8    # "to":I
    .end local v9    # "u1":C
    .end local v10    # "u2":C
    .restart local v5    # "po":I
    .restart local v7    # "to":I
    .restart local p5    # "len":I
    :cond_6f
    const/4 v11, 0x0

    return v11

    .line 1326
    .end local v2    # "c1":C
    .end local v3    # "c2":C
    .end local v5    # "po":I
    .end local v7    # "to":I
    .restart local v6    # "po":I
    .restart local v8    # "to":I
    :cond_71
    const/4 v11, 0x1

    return v11
.end method

.method public replace(CC)Ljava/lang/String;
    .registers 6
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    .prologue
    .line 2071
    if-eq p1, p2, :cond_17

    .line 2072
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 2073
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v1, :cond_17

    .line 2074
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_14

    .line 2075
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->doReplace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2073
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2079
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_17
    return-object p0
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 12
    .param p1, "target"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    .prologue
    .line 2234
    if-nez p1, :cond_b

    .line 2235
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "target == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2238
    :cond_b
    if-nez p2, :cond_16

    .line 2239
    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "replacement == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2242
    :cond_16
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2243
    .local v4, "replacementStr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2251
    .local v6, "targetStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2252
    .local v3, "len":I
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 2255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v3, 0x2

    mul-int/2addr v7, v8

    add-int/2addr v7, v3

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2256
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_39
    if-ge v1, v3, :cond_48

    .line 2258
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2259
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    add-int/lit8 v1, v1, 0x1

    goto :goto_39

    .line 2262
    :cond_48
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2266
    .end local v1    # "i":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :cond_4d
    const/4 v2, 0x0

    .line 2267
    .local v2, "lastMatch":I
    const/4 v5, 0x0

    .line 2269
    :goto_4f
    invoke-static {p0, v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2270
    .local v0, "currentMatch":I
    const/4 v7, -0x1

    if-ne v0, v7, :cond_60

    .line 2283
    if-eqz v5, :cond_74

    .line 2284
    invoke-virtual {v5, p0, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2285
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 2274
    :cond_60
    if-nez v5, :cond_67

    .line 2275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2278
    :cond_67
    invoke-virtual {v5, p0, v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2279
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2280
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    add-int v2, v0, v7

    goto :goto_4f

    .line 2287
    :cond_74
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 2216
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .prologue
    .line 2171
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 2426
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 2379
    invoke-static {p1, p0, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2380
    .local v0, "fast":[Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 2381
    return-object v0

    .line 2384
    :cond_7
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public startsWith(Ljava/lang/String;)Z
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .registers 11
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "toffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1347
    move v3, p2

    .line 1348
    .local v3, "to":I
    const/4 v1, 0x0

    .line 1349
    .local v1, "po":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1351
    .local v0, "pc":I
    if-ltz p2, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    if-le p2, v5, :cond_11

    .line 1352
    :cond_10
    return v7

    :cond_11
    move v2, v1

    .end local v1    # "po":I
    .local v2, "po":I
    move v4, v3

    .line 1354
    .end local v3    # "to":I
    .local v4, "to":I
    :goto_13
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_29

    .line 1355
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "to":I
    .restart local v3    # "to":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "po":I
    .restart local v1    # "po":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_26

    .line 1356
    return v7

    :cond_26
    move v2, v1

    .end local v1    # "po":I
    .restart local v2    # "po":I
    move v4, v3

    .end local v3    # "to":I
    .restart local v4    # "to":I
    goto :goto_13

    .line 1359
    :cond_29
    const/4 v5, 0x1

    return v5
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 2015
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .registers 4
    .param p1, "beginIndex"    # I

    .prologue
    .line 1934
    if-gez p1, :cond_8

    .line 1935
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1937
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v0, v1, p1

    .line 1938
    .local v0, "subLen":I
    if-gez v0, :cond_16

    .line 1939
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1941
    :cond_16
    if-nez p1, :cond_19

    .end local p0    # "this":Ljava/lang/String;
    :goto_18
    return-object p0

    .restart local p0    # "this":Ljava/lang/String;
    :cond_19
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_18
.end method

.method public substring(II)Ljava/lang/String;
    .registers 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 1967
    if-gez p1, :cond_8

    .line 1968
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1970
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le p2, v1, :cond_14

    .line 1971
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1973
    :cond_14
    sub-int v0, p2, p1

    .line 1974
    .local v0, "subLen":I
    if-gez v0, :cond_1e

    .line 1975
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 1978
    :cond_1e
    if-nez p1, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_27

    .end local p0    # "this":Ljava/lang/String;
    :goto_26
    return-object p0

    .line 1979
    .restart local p0    # "this":Ljava/lang/String;
    :cond_27
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_26
.end method

.method public native toCharArray()[C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public toLowerCase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2589
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2566
    invoke-static {p1, p0}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .prologue
    .line 2717
    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2664
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 2641
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p0, v0}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 2699
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2700
    .local v0, "len":I
    const/4 v1, 0x0

    .line 2702
    .local v1, "st":I
    :goto_7
    if-ge v1, v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v3, :cond_12

    .line 2703
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2705
    :cond_12
    :goto_12
    if-ge v1, v0, :cond_1f

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-gt v2, v3, :cond_1f

    .line 2706
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2708
    :cond_1f
    if-gtz v1, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2b

    :cond_27
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "this":Ljava/lang/String;
    :cond_2b
    return-object p0
.end method
