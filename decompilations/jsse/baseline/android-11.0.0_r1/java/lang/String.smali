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
        "Ljava/lang/Comparable<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field public static final whitelist core-platform-api test-api CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final whitelist serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final greylist count:I

.field private greylist hash:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 150
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    sput-object v0, Ljava/lang/String;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    .line 1187
    new-instance v0, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$1;)V

    sput-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>()V
    .registers 3

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor greylist <init>(II[C)V
    .registers 6
    .param p1, "offset"    # I
    .param p2, "count"    # I
    .param p3, "value"    # [C
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "original"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/StringBuffer;)V
    .registers 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([B)V
    .registers 4
    .param p1, "bytes"    # [B

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([BI)V
    .registers 5
    .param p1, "ascii"    # [B
    .param p2, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([BII)V
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([BIII)V
    .registers 7
    .param p1, "ascii"    # [B
    .param p2, "hibyte"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([BIILjava/lang/String;)V
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

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([BIILjava/nio/charset/Charset;)V
    .registers 7
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([BLjava/lang/String;)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([BLjava/nio/charset/Charset;)V
    .registers 5
    .param p1, "bytes"    # [B
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([C)V
    .registers 4
    .param p1, "value"    # [C

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([CII)V
    .registers 6
    .param p1, "value"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>([III)V
    .registers 6
    .param p1, "codePoints"    # [I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use StringFactory instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api copyValueOf([C)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [C

    .line 2990
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api copyValueOf([CII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 2979
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private native greylist-max-o doReplace(CC)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private native greylist-max-o fastSubstring(II)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static varargs whitelist core-platform-api test-api format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 2870
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs whitelist core-platform-api test-api format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p0, "l"    # Ljava/util/Locale;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 2911
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, p0}, Ljava/util/Formatter;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o indexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 14
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1724
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1725
    .local v0, "sourceLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1726
    .local v1, "targetLength":I
    const/4 v2, -0x1

    if-lt p2, v0, :cond_f

    .line 1727
    if-nez v1, :cond_e

    move v2, v0

    :cond_e
    return v2

    .line 1729
    :cond_f
    if-gez p2, :cond_12

    .line 1730
    const/4 p2, 0x0

    .line 1732
    :cond_12
    if-nez v1, :cond_15

    .line 1733
    return p2

    .line 1736
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1737
    .local v3, "first":C
    sub-int v4, v0, v1

    .line 1739
    .local v4, "max":I
    move v5, p2

    .local v5, "i":I
    :goto_1d
    if-gt v5, v4, :cond_50

    .line 1741
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_30

    .line 1742
    :goto_25
    add-int/lit8 v5, v5, 0x1

    if-gt v5, v4, :cond_30

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v3, :cond_30

    goto :goto_25

    .line 1746
    :cond_30
    if-gt v5, v4, :cond_4d

    .line 1747
    add-int/lit8 v6, v5, 0x1

    .line 1748
    .local v6, "j":I
    add-int v7, v6, v1

    add-int/lit8 v7, v7, -0x1

    .line 1749
    .local v7, "end":I
    const/4 v8, 0x1

    .local v8, "k":I
    :goto_39
    if-ge v6, v7, :cond_4a

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 1750
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v9, v10, :cond_4a

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    .line 1752
    .end local v8    # "k":I
    :cond_4a
    if-ne v6, v7, :cond_4d

    .line 1754
    return v5

    .line 1739
    .end local v6    # "j":I
    .end local v7    # "end":I
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 1758
    .end local v5    # "i":I
    :cond_50
    return v2
.end method

.method static blacklist indexOf([CIILjava/lang/String;I)I
    .registers 12
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "fromIndex"    # I

    .line 1775
    nop

    .line 1776
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1775
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Ljava/lang/String;->indexOf([CII[CIII)I

    move-result v0

    return v0
.end method

.method static greylist indexOf([CII[CIII)I
    .registers 16
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # [C
    .param p4, "targetOffset"    # I
    .param p5, "targetCount"    # I
    .param p6, "fromIndex"    # I

    .line 1796
    const/4 v0, -0x1

    if-lt p6, p2, :cond_7

    .line 1797
    if-nez p5, :cond_6

    move v0, p2

    :cond_6
    return v0

    .line 1799
    :cond_7
    if-gez p6, :cond_a

    .line 1800
    const/4 p6, 0x0

    .line 1802
    :cond_a
    if-nez p5, :cond_d

    .line 1803
    return p6

    .line 1806
    :cond_d
    aget-char v1, p3, p4

    .line 1807
    .local v1, "first":C
    sub-int v2, p2, p5

    add-int/2addr v2, p1

    .line 1809
    .local v2, "max":I
    add-int v3, p1, p6

    .local v3, "i":I
    :goto_14
    if-gt v3, v2, :cond_42

    .line 1811
    aget-char v4, p0, v3

    if-eq v4, v1, :cond_23

    .line 1812
    :goto_1a
    add-int/lit8 v3, v3, 0x1

    if-gt v3, v2, :cond_23

    aget-char v4, p0, v3

    if-eq v4, v1, :cond_23

    goto :goto_1a

    .line 1816
    :cond_23
    if-gt v3, v2, :cond_3f

    .line 1817
    add-int/lit8 v4, v3, 0x1

    .line 1818
    .local v4, "j":I
    add-int v5, v4, p5

    add-int/lit8 v5, v5, -0x1

    .line 1819
    .local v5, "end":I
    add-int/lit8 v6, p4, 0x1

    .local v6, "k":I
    :goto_2d
    if-ge v4, v5, :cond_3a

    aget-char v7, p0, v4

    aget-char v8, p3, v6

    if-ne v7, v8, :cond_3a

    .line 1820
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2d

    .line 1822
    .end local v6    # "k":I
    :cond_3a
    if-ne v4, v5, :cond_3f

    .line 1824
    sub-int v0, v3, p1

    return v0

    .line 1809
    .end local v4    # "j":I
    .end local v5    # "end":I
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1828
    .end local v3    # "i":I
    :cond_42
    return v0
.end method

.method private greylist-max-o indexOfSupplementary(II)I
    .registers 8
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 1568
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1569
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    .line 1570
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    .line 1571
    .local v1, "lo":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1572
    .local v2, "max":I
    move v3, p2

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_29

    .line 1573
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_26

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v1, :cond_26

    .line 1574
    return v3

    .line 1572
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1578
    .end local v0    # "hi":C
    .end local v1    # "lo":C
    .end local v2    # "max":I
    .end local v3    # "i":I
    :cond_29
    const/4 v0, -0x1

    return v0
.end method

.method public static whitelist core-platform-api test-api join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2603
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/CharSequence;>;"
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2606
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 2607
    .local v2, "cs":Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2608
    .end local v2    # "cs":Ljava/lang/CharSequence;
    goto :goto_f

    .line 2609
    :cond_1f
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs whitelist core-platform-api test-api join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "elements"    # [Ljava/lang/CharSequence;

    .line 2554
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2555
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2557
    new-instance v0, Ljava/util/StringJoiner;

    invoke-direct {v0, p0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2558
    .local v0, "joiner":Ljava/util/StringJoiner;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, p1, v2

    .line 2559
    .local v3, "cs":Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2558
    .end local v3    # "cs":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2561
    :cond_17
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 16
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1885
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1886
    .local v0, "sourceLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1887
    .local v1, "targetLength":I
    sub-int v2, v0, v1

    .line 1888
    .local v2, "rightIndex":I
    const/4 v3, -0x1

    if-gez p2, :cond_e

    .line 1889
    return v3

    .line 1891
    :cond_e
    if-le p2, v2, :cond_11

    .line 1892
    move p2, v2

    .line 1895
    :cond_11
    if-nez v1, :cond_14

    .line 1896
    return p2

    .line 1899
    :cond_14
    add-int/lit8 v4, v1, -0x1

    .line 1900
    .local v4, "strLastIndex":I
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 1901
    .local v5, "strLastChar":C
    add-int/lit8 v6, v1, -0x1

    .line 1902
    .local v6, "min":I
    add-int v7, v6, p2

    .line 1906
    .local v7, "i":I
    :goto_1e
    if-lt v7, v6, :cond_29

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v5, :cond_29

    .line 1907
    add-int/lit8 v7, v7, -0x1

    goto :goto_1e

    .line 1909
    :cond_29
    if-ge v7, v6, :cond_2c

    .line 1910
    return v3

    .line 1912
    :cond_2c
    add-int/lit8 v8, v7, -0x1

    .line 1913
    .local v8, "j":I
    add-int/lit8 v9, v1, -0x1

    sub-int v9, v8, v9

    .line 1914
    .local v9, "start":I
    add-int/lit8 v10, v4, -0x1

    .line 1916
    .local v10, "k":I
    :goto_34
    if-le v8, v9, :cond_4a

    .line 1917
    add-int/lit8 v11, v8, -0x1

    .end local v8    # "j":I
    .local v11, "j":I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v12, v10, -0x1

    .end local v10    # "k":I
    .local v12, "k":I
    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v8, v10, :cond_47

    .line 1918
    add-int/lit8 v7, v7, -0x1

    .line 1919
    goto :goto_1e

    .line 1917
    :cond_47
    move v8, v11

    move v10, v12

    goto :goto_34

    .line 1922
    .end local v11    # "j":I
    .end local v12    # "k":I
    .restart local v8    # "j":I
    .restart local v10    # "k":I
    :cond_4a
    add-int/lit8 v3, v9, 0x1

    return v3
.end method

.method static blacklist lastIndexOf([CIILjava/lang/String;I)I
    .registers 12
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "fromIndex"    # I

    .line 1940
    nop

    .line 1941
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    .line 1940
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p4

    invoke-static/range {v0 .. v6}, Ljava/lang/String;->lastIndexOf([CII[CIII)I

    move-result v0

    return v0
.end method

.method static greylist lastIndexOf([CII[CIII)I
    .registers 19
    .param p0, "source"    # [C
    .param p1, "sourceOffset"    # I
    .param p2, "sourceCount"    # I
    .param p3, "target"    # [C
    .param p4, "targetOffset"    # I
    .param p5, "targetCount"    # I
    .param p6, "fromIndex"    # I

    .line 1965
    move/from16 v0, p6

    sub-int v1, p2, p5

    .line 1966
    .local v1, "rightIndex":I
    const/4 v2, -0x1

    if-gez v0, :cond_8

    .line 1967
    return v2

    .line 1969
    :cond_8
    if-le v0, v1, :cond_b

    .line 1970
    move v0, v1

    .line 1973
    .end local p6    # "fromIndex":I
    .local v0, "fromIndex":I
    :cond_b
    if-nez p5, :cond_e

    .line 1974
    return v0

    .line 1977
    :cond_e
    add-int v3, p4, p5

    add-int/lit8 v3, v3, -0x1

    .line 1978
    .local v3, "strLastIndex":I
    aget-char v4, p3, v3

    .line 1979
    .local v4, "strLastChar":C
    add-int v5, p1, p5

    add-int/lit8 v5, v5, -0x1

    .line 1980
    .local v5, "min":I
    add-int v6, v5, v0

    .line 1984
    .local v6, "i":I
    :goto_1a
    if-lt v6, v5, :cond_23

    aget-char v7, p0, v6

    if-eq v7, v4, :cond_23

    .line 1985
    add-int/lit8 v6, v6, -0x1

    goto :goto_1a

    .line 1987
    :cond_23
    if-ge v6, v5, :cond_26

    .line 1988
    return v2

    .line 1990
    :cond_26
    add-int/lit8 v7, v6, -0x1

    .line 1991
    .local v7, "j":I
    add-int/lit8 v8, p5, -0x1

    sub-int v8, v7, v8

    .line 1992
    .local v8, "start":I
    add-int/lit8 v9, v3, -0x1

    .line 1994
    .local v9, "k":I
    :goto_2e
    if-le v7, v8, :cond_40

    .line 1995
    add-int/lit8 v10, v7, -0x1

    .end local v7    # "j":I
    .local v10, "j":I
    aget-char v7, p0, v7

    add-int/lit8 v11, v9, -0x1

    .end local v9    # "k":I
    .local v11, "k":I
    aget-char v9, p3, v9

    if-eq v7, v9, :cond_3d

    .line 1996
    add-int/lit8 v6, v6, -0x1

    .line 1997
    goto :goto_1a

    .line 1995
    :cond_3d
    move v7, v10

    move v9, v11

    goto :goto_2e

    .line 2000
    .end local v10    # "j":I
    .end local v11    # "k":I
    .restart local v7    # "j":I
    .restart local v9    # "k":I
    :cond_40
    sub-int v2, v8, p1

    add-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private greylist-max-o lastIndexOfSupplementary(II)I
    .registers 7
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 1662
    invoke-static {p1}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1663
    invoke-static {p1}, Ljava/lang/Character;->highSurrogate(I)C

    move-result v0

    .line 1664
    .local v0, "hi":C
    invoke-static {p1}, Ljava/lang/Character;->lowSurrogate(I)C

    move-result v1

    .line 1665
    .local v1, "lo":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1666
    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_2c

    .line 1667
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_29

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_29

    .line 1668
    return v2

    .line 1666
    :cond_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 1672
    .end local v0    # "hi":C
    .end local v1    # "lo":C
    .end local v2    # "i":I
    :cond_2c
    const/4 v0, -0x1

    return v0
.end method

.method private greylist-max-o nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z
    .registers 8
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;

    .line 1036
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->getValue()[C

    move-result-object v0

    .line 1037
    .local v0, "v2":[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1038
    .local v1, "n":I
    invoke-virtual {p1}, Ljava/lang/AbstractStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_10

    .line 1039
    return v3

    .line 1041
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_1f

    .line 1042
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-char v5, v0, v2

    if-eq v4, v5, :cond_1c

    .line 1043
    return v3

    .line 1041
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1046
    .end local v2    # "i":I
    :cond_1f
    const/4 v2, 0x1

    return v2
.end method

.method public static whitelist core-platform-api test-api valueOf(C)Ljava/lang/String;
    .registers 4
    .param p0, "c"    # C

    .line 3018
    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    aput-char p0, v1, v2

    invoke-static {v2, v0, v1}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(D)Ljava/lang/String;
    .registers 3
    .param p0, "d"    # D

    .line 3074
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(F)Ljava/lang/String;
    .registers 2
    .param p0, "f"    # F

    .line 3060
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .line 3032
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(J)Ljava/lang/String;
    .registers 3
    .param p0, "l"    # J

    .line 3046
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;

    .line 2924
    if-nez p0, :cond_5

    const-string v0, "null"

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf(Z)Ljava/lang/String;
    .registers 2
    .param p0, "b"    # Z

    .line 3002
    if-eqz p0, :cond_5

    const-string v0, "true"

    goto :goto_7

    :cond_5
    const-string v0, "false"

    :goto_7
    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf([C)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # [C

    .line 2938
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static whitelist core-platform-api test-api valueOf([CII)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # [C
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 2962
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method public native whitelist core-platform-api test-api charAt(I)C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api codePointAt(I)I
    .registers 3
    .param p1, "index"    # I

    .line 644
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 648
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    .line 645
    :cond_d
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public whitelist core-platform-api test-api codePointBefore(I)I
    .registers 4
    .param p1, "index"    # I

    .line 674
    add-int/lit8 v0, p1, -0x1

    .line 675
    .local v0, "i":I
    if-ltz v0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 679
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    return v1

    .line 676
    :cond_f
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1
.end method

.method public whitelist core-platform-api test-api codePointCount(II)I
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 704
    if-ltz p1, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_f

    if-gt p1, p2, :cond_f

    .line 708
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0

    .line 705
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist core-platform-api test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation

    .line 113
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public native whitelist core-platform-api test-api compareTo(Ljava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api compareToIgnoreCase(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1242
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public native whitelist core-platform-api test-api concat(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 2224
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist core-platform-api test-api contentEquals(Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 1067
    instance-of v0, p1, Ljava/lang/AbstractStringBuilder;

    if-eqz v0, :cond_1d

    .line 1068
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_15

    .line 1069
    monitor-enter p1

    .line 1070
    :try_start_9
    move-object v0, p1

    check-cast v0, Ljava/lang/AbstractStringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/String;->nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z

    move-result v0

    monitor-exit p1

    return v0

    .line 1071
    :catchall_12
    move-exception v0

    monitor-exit p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    throw v0

    .line 1073
    :cond_15
    move-object v0, p1

    check-cast v0, Ljava/lang/AbstractStringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/String;->nonSyncContentEquals(Ljava/lang/AbstractStringBuilder;)Z

    move-result v0

    return v0

    .line 1077
    :cond_1d
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1078
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1081
    :cond_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1082
    .local v0, "n":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_32

    .line 1083
    return v2

    .line 1085
    :cond_32
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_33
    if-ge v1, v0, :cond_43

    .line 1086
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_40

    .line 1087
    return v2

    .line 1085
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 1090
    .end local v1    # "i":I
    :cond_43
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist core-platform-api test-api contentEquals(Ljava/lang/StringBuffer;)Z
    .registers 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 1032
    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api endsWith(Ljava/lang/String;)Z
    .registers 4
    .param p1, "suffix"    # Ljava/lang/String;

    .line 1446
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "anObject"    # Ljava/lang/Object;

    .line 997
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 998
    return v0

    .line 1000
    :cond_4
    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 1001
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 1002
    .local v1, "anotherString":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1003
    .local v3, "n":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2b

    .line 1004
    const/4 v4, 0x0

    .line 1005
    .local v4, "i":I
    :goto_17
    add-int/lit8 v5, v3, -0x1

    .end local v3    # "n":I
    .local v5, "n":I
    if-eqz v3, :cond_2a

    .line 1006
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v3, v6, :cond_26

    .line 1007
    return v2

    .line 1008
    :cond_26
    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_17

    .line 1010
    :cond_2a
    return v0

    .line 1013
    .end local v1    # "anotherString":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_2b
    return v2
.end method

.method public whitelist core-platform-api test-api equalsIgnoreCase(Ljava/lang/String;)Z
    .registers 10
    .param p1, "anotherString"    # Ljava/lang/String;

    .line 1122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 1123
    .local v6, "len":I
    const/4 v7, 0x1

    if-ne p0, p1, :cond_8

    goto :goto_1e

    .line 1126
    :cond_8
    if-eqz p1, :cond_1d

    .line 1125
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v6, :cond_1d

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1126
    move-object v0, p0

    move-object v3, p1

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v7, 0x0

    .line 1123
    :goto_1e
    return v7
.end method

.method public whitelist core-platform-api test-api getBytes(II[BI)V
    .registers 10
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [B
    .param p4, "dstBegin"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 870
    if-ltz p1, :cond_2c

    .line 873
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_26

    .line 876
    if-gt p1, p2, :cond_1e

    .line 880
    move v0, p4

    .line 881
    .local v0, "j":I
    move v1, p2

    .line 882
    .local v1, "n":I
    move v2, p1

    .line 884
    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_1d

    .line 885
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "j":I
    .local v3, "j":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, p3, v0

    move v0, v3

    move v2, v4

    goto :goto_d

    .line 887
    .end local v3    # "j":I
    .end local v4    # "i":I
    .restart local v0    # "j":I
    .restart local v2    # "i":I
    :cond_1d
    return-void

    .line 877
    .end local v0    # "j":I
    .end local v1    # "n":I
    .end local v2    # "i":I
    :cond_1e
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 874
    :cond_26
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 871
    :cond_2c
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getBytes()[B
    .registers 2

    .line 978
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api getBytes(Ljava/lang/String;)[B
    .registers 3
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 911
    if-eqz p1, :cond_b

    .line 914
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0

    .line 911
    :cond_b
    const/4 v0, 0x0

    throw v0
.end method

.method public whitelist core-platform-api test-api getBytes(Ljava/nio/charset/Charset;)[B
    .registers 6
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 939
    if-eqz p1, :cond_4d

    .line 943
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 944
    .local v0, "len":I
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 945
    .local v1, "name":Ljava/lang/String;
    const-string v2, "UTF-8"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 946
    invoke-static {p0, v3, v0}, Llibcore/util/CharsetUtils;->toUtf8Bytes(Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2

    .line 947
    :cond_18
    const-string v2, "ISO-8859-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 948
    invoke-static {p0, v3, v0}, Llibcore/util/CharsetUtils;->toIsoLatin1Bytes(Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2

    .line 949
    :cond_25
    const-string v2, "US-ASCII"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 950
    invoke-static {p0, v3, v0}, Llibcore/util/CharsetUtils;->toAsciiBytes(Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2

    .line 951
    :cond_32
    const-string v2, "UTF-16BE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 952
    invoke-static {p0, v3, v0}, Llibcore/util/CharsetUtils;->toBigEndianUtf16Bytes(Ljava/lang/String;II)[B

    move-result-object v2

    return-object v2

    .line 955
    :cond_3f
    invoke-virtual {p1, p0}, Ljava/nio/charset/Charset;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 956
    .local v2, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    .line 957
    .local v3, "bytes":[B
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 958
    return-object v3

    .line 940
    .end local v0    # "len":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "bytes":[B
    :cond_4d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getChars(II[CI)V
    .registers 10
    .param p1, "srcBegin"    # I
    .param p2, "srcEnd"    # I
    .param p3, "dst"    # [C
    .param p4, "dstBegin"    # I

    .line 780
    if-eqz p3, :cond_8a

    .line 784
    if-ltz p1, :cond_84

    .line 787
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_7e

    .line 791
    sub-int v0, p2, p1

    .line 792
    .local v0, "n":I
    if-lt p2, p1, :cond_78

    .line 796
    if-ltz p4, :cond_61

    .line 801
    array-length v1, p3

    const-string v2, ", dst.length="

    if-gt p4, v1, :cond_43

    .line 805
    array-length v1, p3

    sub-int/2addr v1, p4

    if-gt v0, v1, :cond_1d

    .line 811
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 813
    return-void

    .line 806
    :cond_1d
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "n > dst.length - dstBegin. n="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "dstBegin="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 802
    :cond_43
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dstBegin > dst.length. dstBegin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    :cond_61
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dstBegin < 0. dstBegin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 793
    :cond_78
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v1

    .line 788
    .end local v0    # "n":I
    :cond_7e
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 785
    :cond_84
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 781
    :cond_8a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getChars([CI)V
    .registers 5
    .param p1, "dst"    # [C
    .param p2, "dstBegin"    # I

    .line 745
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Ljava/lang/String;->getCharsNoCheck(II[CI)V

    .line 746
    return-void
.end method

.method native greylist getCharsNoCheck(II[CI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 6

    .line 1463
    iget v0, p0, Ljava/lang/String;->hash:I

    .line 1464
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1465
    .local v1, "len":I
    if-nez v0, :cond_1a

    if-lez v1, :cond_1a

    .line 1466
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_18

    .line 1467
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v0, v3, v4

    .line 1466
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1469
    .end local v2    # "i":I
    :cond_18
    iput v0, p0, Ljava/lang/String;->hash:I

    .line 1471
    :cond_1a
    return v0
.end method

.method public whitelist core-platform-api test-api indexOf(I)I
    .registers 3
    .param p1, "ch"    # I

    .line 1499
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api indexOf(II)I
    .registers 7
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 1542
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1543
    .local v0, "max":I
    const/4 v1, -0x1

    if-gez p2, :cond_9

    .line 1544
    const/4 p2, 0x0

    goto :goto_c

    .line 1545
    :cond_9
    if-lt p2, v0, :cond_c

    .line 1547
    return v1

    .line 1550
    :cond_c
    :goto_c
    const/high16 v2, 0x10000

    if-ge p1, v2, :cond_1e

    .line 1553
    move v2, p2

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_1d

    .line 1554
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 1555
    return v2

    .line 1553
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1558
    .end local v2    # "i":I
    :cond_1d
    return v1

    .line 1560
    :cond_1e
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v1

    return v1
.end method

.method public whitelist core-platform-api test-api indexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1690
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api indexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1711
    invoke-static {p0, p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public native whitelist core-platform-api test-api intern()Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .line 595
    iget v0, p0, Ljava/lang/String;->count:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist core-platform-api test-api lastIndexOf(I)I
    .registers 3
    .param p1, "ch"    # I

    .line 1605
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api lastIndexOf(II)I
    .registers 5
    .param p1, "ch"    # I
    .param p2, "fromIndex"    # I

    .line 1643
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_1c

    .line 1646
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1647
    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_1a

    .line 1648
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_17

    .line 1649
    return v0

    .line 1647
    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1652
    :cond_1a
    const/4 v1, -0x1

    return v1

    .line 1654
    .end local v0    # "i":I
    :cond_1c
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api lastIndexOf(Ljava/lang/String;)I
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 1847
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api lastIndexOf(Ljava/lang/String;I)I
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fromIndex"    # I

    .line 1868
    invoke-static {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api length()I
    .registers 3

    .line 572
    const/4 v0, 0x1

    .line 576
    .local v0, "STRING_COMPRESSION_ENABLED":Z
    iget v1, p0, Ljava/lang/String;->count:I

    ushr-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public whitelist core-platform-api test-api matches(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .line 2212
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api offsetByCodePoints(II)I
    .registers 4
    .param p1, "index"    # I
    .param p2, "codePointOffset"    # I

    .line 732
    if-ltz p1, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_d

    .line 736
    invoke-static {p0, p1, p2}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v0

    return v0

    .line 733
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api regionMatches(ILjava/lang/String;II)Z
    .registers 14
    .param p1, "toffset"    # I
    .param p2, "other"    # Ljava/lang/String;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .line 1279
    move v0, p1

    .line 1280
    .local v0, "to":I
    move v1, p3

    .line 1282
    .local v1, "po":I
    const/4 v2, 0x0

    if-ltz p3, :cond_39

    if-ltz p1, :cond_39

    int-to-long v3, p1

    .line 1283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, p4

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gtz v3, :cond_39

    int-to-long v3, p3

    .line 1284
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, p4

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_20

    goto :goto_39

    .line 1287
    :cond_20
    :goto_20
    add-int/lit8 v3, p4, -0x1

    .end local p4    # "len":I
    .local v3, "len":I
    if-lez p4, :cond_37

    .line 1288
    add-int/lit8 p4, v0, 0x1

    .end local v0    # "to":I
    .local p4, "to":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "po":I
    .local v4, "po":I
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_33

    .line 1289
    return v2

    .line 1288
    :cond_33
    move v0, p4

    move p4, v3

    move v1, v4

    goto :goto_20

    .line 1292
    .end local v4    # "po":I
    .end local p4    # "to":I
    .restart local v0    # "to":I
    .restart local v1    # "po":I
    :cond_37
    const/4 p4, 0x1

    return p4

    .line 1285
    .end local v3    # "len":I
    .local p4, "len":I
    :cond_39
    :goto_39
    return v2
.end method

.method public whitelist core-platform-api test-api regionMatches(ZILjava/lang/String;II)Z
    .registers 15
    .param p1, "ignoreCase"    # Z
    .param p2, "toffset"    # I
    .param p3, "other"    # Ljava/lang/String;
    .param p4, "ooffset"    # I
    .param p5, "len"    # I

    .line 1347
    move v0, p2

    .line 1348
    .local v0, "to":I
    move v1, p4

    .line 1350
    .local v1, "po":I
    const/4 v2, 0x0

    if-ltz p4, :cond_52

    if-ltz p2, :cond_52

    int-to-long v3, p2

    .line 1351
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, p5

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gtz v3, :cond_52

    int-to-long v3, p4

    .line 1352
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    int-to-long v5, v5

    int-to-long v7, p5

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_20

    goto :goto_52

    .line 1355
    :cond_20
    :goto_20
    add-int/lit8 v3, p5, -0x1

    .end local p5    # "len":I
    .local v3, "len":I
    if-lez p5, :cond_50

    .line 1356
    add-int/lit8 p5, v0, 0x1

    .end local v0    # "to":I
    .local p5, "to":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1357
    .local v0, "c1":C
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "po":I
    .local v4, "po":I
    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1358
    .local v1, "c2":C
    if-ne v0, v1, :cond_33

    .line 1359
    goto :goto_4b

    .line 1361
    :cond_33
    if-eqz p1, :cond_4f

    .line 1366
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 1367
    .local v5, "u1":C
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    .line 1368
    .local v6, "u2":C
    if-ne v5, v6, :cond_40

    .line 1369
    goto :goto_4b

    .line 1375
    :cond_40
    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-ne v7, v8, :cond_4f

    .line 1376
    nop

    .line 1355
    .end local v0    # "c1":C
    .end local v1    # "c2":C
    .end local v5    # "u1":C
    .end local v6    # "u2":C
    :goto_4b
    move v0, p5

    move p5, v3

    move v1, v4

    goto :goto_20

    .line 1379
    .restart local v0    # "c1":C
    .restart local v1    # "c2":C
    :cond_4f
    return v2

    .line 1381
    .end local v4    # "po":I
    .end local p5    # "to":I
    .local v0, "to":I
    .local v1, "po":I
    :cond_50
    const/4 p5, 0x1

    return p5

    .line 1353
    .end local v3    # "len":I
    .local p5, "len":I
    :cond_52
    :goto_52
    return v2
.end method

.method public whitelist core-platform-api test-api replace(CC)Ljava/lang/String;
    .registers 6
    .param p1, "oldChar"    # C
    .param p2, "newChar"    # C

    .line 2166
    if-eq p1, p2, :cond_17

    .line 2167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2168
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 2169
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_14

    .line 2170
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->doReplace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 2168
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2175
    .end local v0    # "len":I
    .end local v1    # "i":I
    :cond_17
    return-object p0
.end method

.method public whitelist core-platform-api test-api replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10
    .param p1, "target"    # Ljava/lang/CharSequence;
    .param p2, "replacement"    # Ljava/lang/CharSequence;

    .line 2331
    if-eqz p1, :cond_6d

    .line 2335
    if-eqz p2, :cond_65

    .line 2339
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2340
    .local v0, "replacementStr":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2348
    .local v1, "targetStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 2349
    .local v2, "len":I
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 2352
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v5, v2, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v4, v2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2353
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v2, :cond_36

    .line 2355
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2356
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2354
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 2359
    .end local v4    # "i":I
    :cond_36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2363
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_3b
    const/4 v3, 0x0

    .line 2364
    .local v3, "lastMatch":I
    const/4 v4, 0x0

    .line 2366
    .local v4, "sb":Ljava/lang/StringBuilder;
    :goto_3d
    invoke-static {p0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 2367
    .local v5, "currentMatch":I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_50

    .line 2368
    nop

    .line 2380
    .end local v5    # "currentMatch":I
    if-eqz v4, :cond_4f

    .line 2381
    invoke-virtual {v4, p0, v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2382
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2384
    :cond_4f
    return-object p0

    .line 2371
    .restart local v5    # "currentMatch":I
    :cond_50
    if-nez v4, :cond_58

    .line 2372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v4, v6

    .line 2375
    :cond_58
    invoke-virtual {v4, p0, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 2376
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2377
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int v3, v5, v6

    .line 2378
    .end local v5    # "currentMatch":I
    goto :goto_3d

    .line 2336
    .end local v0    # "replacementStr":Ljava/lang/String;
    .end local v1    # "targetStr":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "lastMatch":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "replacement == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2332
    :cond_6d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "target == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 2314
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "replacement"    # Ljava/lang/String;

    .line 2269
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api split(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "regex"    # Ljava/lang/String;

    .line 2525
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api split(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5
    .param p1, "regex"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .line 2478
    invoke-static {p1, p0, p2}, Ljava/util/regex/Pattern;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2479
    .local v0, "fast":[Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 2480
    return-object v0

    .line 2483
    :cond_7
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api startsWith(Ljava/lang/String;)Z
    .registers 3
    .param p1, "prefix"    # Ljava/lang/String;

    .line 1431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api startsWith(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "toffset"    # I

    .line 1402
    move v0, p2

    .line 1403
    .local v0, "to":I
    const/4 v1, 0x0

    .line 1404
    .local v1, "po":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1406
    .local v2, "pc":I
    const/4 v3, 0x0

    if-ltz p2, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-le p2, v4, :cond_11

    goto :goto_29

    .line 1409
    :cond_11
    :goto_11
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_27

    .line 1410
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "to":I
    .local v4, "to":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "po":I
    .local v5, "po":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_24

    .line 1411
    return v3

    .line 1410
    :cond_24
    move v0, v4

    move v1, v5

    goto :goto_11

    .line 1414
    .end local v4    # "to":I
    .end local v5    # "po":I
    .restart local v0    # "to":I
    .restart local v1    # "po":I
    :cond_27
    const/4 v3, 0x1

    return v3

    .line 1407
    :cond_29
    :goto_29
    return v3
.end method

.method public whitelist core-platform-api test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 2107
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api substring(I)Ljava/lang/String;
    .registers 4
    .param p1, "beginIndex"    # I

    .line 2022
    if-ltz p1, :cond_18

    .line 2025
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p1

    .line 2026
    .local v0, "subLen":I
    if-ltz v0, :cond_12

    .line 2030
    if-nez p1, :cond_d

    move-object v1, p0

    goto :goto_11

    :cond_d
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    move-result-object v1

    :goto_11
    return-object v1

    .line 2027
    :cond_12
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 2023
    .end local v0    # "subLen":I
    :cond_18
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public whitelist core-platform-api test-api substring(II)Ljava/lang/String;
    .registers 5
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 2056
    if-ltz p1, :cond_27

    .line 2059
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_21

    .line 2062
    sub-int v0, p2, p1

    .line 2063
    .local v0, "subLen":I
    if-ltz v0, :cond_1b

    .line 2068
    if-nez p1, :cond_16

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne p2, v1, :cond_16

    move-object v1, p0

    goto :goto_1a

    .line 2069
    :cond_16
    invoke-direct {p0, p1, v0}, Ljava/lang/String;->fastSubstring(II)Ljava/lang/String;

    move-result-object v1

    .line 2068
    :goto_1a
    return-object v1

    .line 2064
    :cond_1b
    new-instance v1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v1, v0}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 2060
    .end local v0    # "subLen":I
    :cond_21
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 2057
    :cond_27
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public native whitelist core-platform-api test-api toCharArray()[C
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public whitelist core-platform-api test-api toLowerCase()Ljava/lang/String;
    .registers 2

    .line 2689
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2666
    invoke-static {p1, p0}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 1

    .line 2818
    return-object p0
.end method

.method public whitelist core-platform-api test-api toUpperCase()Ljava/lang/String;
    .registers 2

    .line 2765
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2742
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1, p0, v0}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist core-platform-api test-api trim()Ljava/lang/String;
    .registers 5

    .line 2800
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2801
    .local v0, "len":I
    const/4 v1, 0x0

    .line 2803
    .local v1, "st":I
    :goto_5
    const/16 v2, 0x20

    if-ge v1, v0, :cond_12

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_12

    .line 2804
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 2806
    :cond_12
    :goto_12
    if-ge v1, v0, :cond_1f

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v2, :cond_1f

    .line 2807
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    .line 2809
    :cond_1f
    if-gtz v1, :cond_2a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_28

    goto :goto_2a

    :cond_28
    move-object v2, p0

    goto :goto_2e

    :cond_2a
    :goto_2a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    return-object v2
.end method
