.class Lsun/nio/fs/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final jnuEncoding:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lsun/nio/fs/Util;->jnuEncoding:Ljava/nio/charset/Charset;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs followLinks([Ljava/nio/file/LinkOption;)Z
    .registers 6
    .param p0, "options"    # [Ljava/nio/file/LinkOption;

    .prologue
    .line 122
    const/4 v0, 0x1

    .line 123
    .local v0, "followLinks":Z
    const/4 v2, 0x0

    array-length v3, p0

    :goto_3
    if-ge v2, v3, :cond_20

    aget-object v1, p0, v2

    .line 124
    .local v1, "option":Ljava/nio/file/LinkOption;
    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    if-ne v1, v4, :cond_f

    .line 125
    const/4 v0, 0x0

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 126
    :cond_f
    if-nez v1, :cond_17

    .line 127
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 129
    :cond_17
    new-instance v2, Ljava/lang/AssertionError;

    const-string/jumbo v3, "Should not get here"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 132
    .end local v1    # "option":Ljava/nio/file/LinkOption;
    :cond_20
    return v0
.end method

.method static jnuEncoding()Ljava/nio/charset/Charset;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lsun/nio/fs/Util;->jnuEncoding:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static varargs newSet(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TE;>;[TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 111
    .local p0, "other":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 112
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    const/4 v2, 0x0

    array-length v3, p1

    :goto_7
    if-ge v2, v3, :cond_11

    aget-object v0, p1, v2

    .line 113
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 115
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_11
    return-object v1
.end method

.method static varargs newSet([Ljava/lang/Object;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .prologue
    .line 98
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_7
    if-ge v2, v3, :cond_11

    aget-object v0, p0, v2

    .line 100
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 102
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_11
    return-object v1
.end method

.method static split(Ljava/lang/String;C)[Ljava/lang/String;
    .registers 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "c"    # C

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_13

    .line 77
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_10

    .line 78
    add-int/lit8 v0, v0, 0x1

    .line 76
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_13
    add-int/lit8 v6, v0, 0x1

    new-array v5, v6, [Ljava/lang/String;

    .line 81
    .local v5, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 82
    .local v3, "n":I
    const/4 v2, 0x0

    .line 83
    .local v2, "last":I
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v1, v6, :cond_34

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_31

    .line 85
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "n":I
    .local v4, "n":I
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 86
    add-int/lit8 v2, v1, 0x1

    move v3, v4

    .line 83
    .end local v4    # "n":I
    .restart local v3    # "n":I
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 89
    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 90
    return-object v5
.end method

.method static toBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lsun/nio/fs/Util;->jnuEncoding:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method static toString([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 65
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lsun/nio/fs/Util;->jnuEncoding:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
