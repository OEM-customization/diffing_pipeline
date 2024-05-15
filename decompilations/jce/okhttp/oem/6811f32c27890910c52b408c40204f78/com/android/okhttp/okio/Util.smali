.class final Lcom/android/okhttp/okio/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/okio/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 20
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static arrayRangeEquals([BI[BII)Z
    .registers 8
    .param p0, "a"    # [B
    .param p1, "aOffset"    # I
    .param p2, "b"    # [B
    .param p3, "bOffset"    # I
    .param p4, "byteCount"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p4, :cond_12

    .line 76
    add-int v1, v0, p1

    aget-byte v1, p0, v1

    add-int v2, v0, p3

    aget-byte v2, p2, v2

    if-eq v1, v2, :cond_f

    const/4 v1, 0x0

    return v1

    .line 75
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method public static checkOffsetAndCount(JJJ)V
    .registers 12
    .param p0, "size"    # J
    .param p2, "offset"    # J
    .param p4, "byteCount"    # J

    .prologue
    .line 28
    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_c

    cmp-long v0, p2, p0

    if-lez v0, :cond_31

    .line 29
    :cond_c
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 30
    const-string/jumbo v1, "size=%s offset=%s byteCount=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_31
    sub-long v0, p0, p2

    cmp-long v0, v0, p4

    if-ltz v0, :cond_c

    .line 32
    return-void
.end method

.method public static reverseBytesInt(I)I
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 42
    const/high16 v0, -0x1000000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x18

    .line 43
    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x8

    .line 42
    or-int/2addr v0, v1

    .line 44
    const v1, 0xff00

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    .line 42
    or-int/2addr v0, v1

    .line 45
    and-int/lit16 v1, p0, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 42
    or-int/2addr v0, v1

    return v0
.end method

.method public static reverseBytesLong(J)J
    .registers 10
    .param p0, "v"    # J

    .prologue
    const/16 v7, 0x38

    const/16 v6, 0x28

    const/16 v5, 0x18

    const/16 v4, 0x8

    .line 49
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    ushr-long/2addr v0, v7

    .line 50
    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v6

    .line 49
    or-long/2addr v0, v2

    .line 51
    const-wide v2, 0xff0000000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v5

    .line 49
    or-long/2addr v0, v2

    .line 52
    const-wide v2, 0xff00000000L

    and-long/2addr v2, p0

    ushr-long/2addr v2, v4

    .line 49
    or-long/2addr v0, v2

    .line 53
    const-wide v2, 0xff000000L

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    .line 49
    or-long/2addr v0, v2

    .line 54
    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    .line 49
    or-long/2addr v0, v2

    .line 55
    const-wide/32 v2, 0xff00

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    .line 49
    or-long/2addr v0, v2

    .line 56
    const-wide/16 v2, 0xff

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    .line 49
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytesShort(S)S
    .registers 5
    .param p0, "s"    # S

    .prologue
    .line 35
    const v2, 0xffff

    and-int v0, p0, v2

    .line 36
    .local v0, "i":I
    const v2, 0xff00

    and-int/2addr v2, v0

    ushr-int/lit8 v2, v2, 0x8

    .line 37
    and-int/lit16 v3, v0, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 36
    or-int v1, v2, v3

    .line 38
    .local v1, "reversed":I
    int-to-short v2, v1

    return v2
.end method

.method public static sneakyRethrow(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    invoke-static {p0}, Lcom/android/okhttp/okio/Util;->sneakyThrow2(Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method private static sneakyThrow2(Ljava/lang/Throwable;)V
    .registers 1
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    throw p0
.end method
