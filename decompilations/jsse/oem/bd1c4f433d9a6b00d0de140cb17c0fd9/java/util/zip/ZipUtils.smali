.class Ljava/util/zip/ZipUtils;
.super Ljava/lang/Object;
.source "ZipUtils.java"


# static fields
.field private static final WINDOWS_EPOCH_IN_MICROSECONDS:J = -0x295e9648864000L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dosToJavaTime(J)J
    .registers 12
    .param p0, "dtime"    # J

    .prologue
    const-wide/16 v6, 0x1f

    .line 71
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x19

    shr-long v2, p0, v1

    const-wide/16 v4, 0x7f

    and-long/2addr v2, v4

    const-wide/16 v4, 0x50

    add-long/2addr v2, v4

    long-to-int v1, v2

    .line 72
    const/16 v2, 0x15

    shr-long v2, p0, v2

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 73
    const/16 v3, 0x10

    shr-long v4, p0, v3

    and-long/2addr v4, v6

    long-to-int v3, v4

    .line 74
    const/16 v4, 0xb

    shr-long v4, p0, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    .line 75
    const/4 v5, 0x5

    shr-long v6, p0, v5

    const-wide/16 v8, 0x3f

    and-long/2addr v6, v8

    long-to-int v5, v6

    .line 76
    const/4 v6, 0x1

    shl-long v6, p0, v6

    const-wide/16 v8, 0x3e

    and-long/2addr v6, v8

    long-to-int v6, v6

    .line 71
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 77
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method public static extendedDosToJavaTime(J)J
    .registers 6
    .param p0, "xdostime"    # J

    .prologue
    .line 88
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->dosToJavaTime(J)J

    move-result-wide v0

    .line 89
    .local v0, "time":J
    const/16 v2, 0x20

    shr-long v2, p0, v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public static final fileTimeToUnixTime(Ljava/nio/file/attribute/FileTime;)J
    .registers 3
    .param p0, "ftime"    # Ljava/nio/file/attribute/FileTime;

    .prologue
    .line 63
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final fileTimeToWinTime(Ljava/nio/file/attribute/FileTime;)J
    .registers 5
    .param p0, "ftime"    # Ljava/nio/file/attribute/FileTime;

    .prologue
    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0}, Ljava/nio/file/attribute/FileTime;->to(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide v2, -0x295e9648864000L

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static final get16([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 130
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static final get32([BI)J
    .registers 7
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 138
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x2

    invoke-static {p0, v2}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static final get64([BI)J
    .registers 7
    .param p0, "b"    # [B
    .param p1, "off"    # I

    .prologue
    .line 146
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v0

    add-int/lit8 v2, p1, 0x4

    invoke-static {p0, v2}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static javaToDosTime(J)J
    .registers 8
    .param p0, "time"    # J

    .prologue
    .line 97
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 98
    .local v0, "d":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v1, v2, 0x76c

    .line 99
    .local v1, "year":I
    const/16 v2, 0x7bc

    if-ge v1, v2, :cond_13

    .line 100
    const-wide/32 v2, 0x210000

    return-wide v2

    .line 103
    :cond_13
    add-int/lit16 v2, v1, -0x7bc

    shl-int/lit8 v2, v2, 0x19

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v2, v3

    .line 104
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    .line 103
    or-int/2addr v2, v3

    .line 104
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    shl-int/lit8 v3, v3, 0xb

    .line 103
    or-int/2addr v2, v3

    .line 104
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    .line 103
    or-int/2addr v2, v3

    .line 105
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    .line 103
    or-int/2addr v2, v3

    int-to-long v2, v2

    .line 105
    const-wide v4, 0xffffffffL

    .line 103
    and-long/2addr v2, v4

    return-wide v2
.end method

.method public static javaToExtendedDosTime(J)J
    .registers 8
    .param p0, "time"    # J

    .prologue
    const-wide/32 v2, 0x210000

    .line 116
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_a

    .line 117
    return-wide v2

    .line 119
    :cond_a
    invoke-static {p0, p1}, Ljava/util/zip/ZipUtils;->javaToDosTime(J)J

    move-result-wide v0

    .line 120
    .local v0, "dostime":J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_1a

    .line 121
    const-wide/16 v2, 0x7d0

    rem-long v2, p0, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v2, v0

    .line 120
    :cond_1a
    return-wide v2
.end method

.method public static final unixTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .registers 4
    .param p0, "utime"    # J

    .prologue
    .line 56
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p1, v0}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method

.method public static final winTimeToFileTime(J)Ljava/nio/file/attribute/FileTime;
    .registers 6
    .param p0, "wtime"    # J

    .prologue
    .line 41
    const-wide/16 v0, 0xa

    div-long v0, p0, v0

    const-wide v2, -0x295e9648864000L

    add-long/2addr v0, v2

    .line 42
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 41
    invoke-static {v0, v1, v2}, Ljava/nio/file/attribute/FileTime;->from(JLjava/util/concurrent/TimeUnit;)Ljava/nio/file/attribute/FileTime;

    move-result-object v0

    return-object v0
.end method
