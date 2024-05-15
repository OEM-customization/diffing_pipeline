.class public Lsun/nio/ch/FileKey;
.super Ljava/lang/Object;
.source "FileKey.java"


# instance fields
.field private blacklist st_dev:J

.field private blacklist st_ino:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist create(Ljava/io/FileDescriptor;)Lsun/nio/ch/FileKey;
    .registers 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;

    .line 42
    new-instance v0, Lsun/nio/ch/FileKey;

    invoke-direct {v0}, Lsun/nio/ch/FileKey;-><init>()V

    .line 44
    .local v0, "fk":Lsun/nio/ch/FileKey;
    :try_start_5
    invoke-direct {v0, p0}, Lsun/nio/ch/FileKey;->init(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_a

    .line 47
    nop

    .line 48
    return-object v0

    .line 45
    :catch_a
    move-exception v1

    .line 46
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private native blacklist init(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 58
    return v0

    .line 59
    :cond_4
    instance-of v1, p1, Lsun/nio/ch/FileKey;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 60
    return v2

    .line 61
    :cond_a
    move-object v1, p1

    check-cast v1, Lsun/nio/ch/FileKey;

    .line 62
    .local v1, "other":Lsun/nio/ch/FileKey;
    iget-wide v3, p0, Lsun/nio/ch/FileKey;->st_dev:J

    iget-wide v5, v1, Lsun/nio/ch/FileKey;->st_dev:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_1f

    iget-wide v3, p0, Lsun/nio/ch/FileKey;->st_ino:J

    iget-wide v5, v1, Lsun/nio/ch/FileKey;->st_ino:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1e

    goto :goto_1f

    .line 66
    :cond_1e
    return v0

    .line 64
    :cond_1f
    :goto_1f
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 52
    iget-wide v0, p0, Lsun/nio/ch/FileKey;->st_dev:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    iget-wide v3, p0, Lsun/nio/ch/FileKey;->st_ino:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
