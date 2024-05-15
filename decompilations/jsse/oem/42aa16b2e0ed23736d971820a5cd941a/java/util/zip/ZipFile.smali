.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipFileInputStream;,
        Ljava/util/zip/ZipFile$ZipEntryIterator;,
        Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFLATED:I = 0x8

.field private static final greylist-max-o JZENTRY_COMMENT:I = 0x2

.field private static final greylist-max-o JZENTRY_EXTRA:I = 0x1

.field private static final greylist-max-o JZENTRY_NAME:I = 0x0

.field public static final whitelist core-platform-api test-api OPEN_DELETE:I = 0x4

.field public static final whitelist core-platform-api test-api OPEN_READ:I = 0x1

.field private static final greylist-max-o STORED:I

.field private static final greylist-max-o usemmap:Z


# instance fields
.field private volatile greylist-max-o closeRequested:Z

.field private final greylist-max-o fileToRemoveOnClose:Ljava/io/File;

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;

.field private greylist-max-o inflaterCache:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field private greylist jzfile:J

.field private final greylist-max-o locsig:Z

.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/InputStream;",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o total:I

.field private greylist-max-o zc:Ljava/util/zip/ZipCoder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Ljava/util/zip/ZipFile;->usemmap:Z

    .line 137
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 202
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/File;I)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 188
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    .line 85
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    .line 377
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    .line 530
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    .line 240
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_63

    and-int/lit8 v0, p2, -0x6

    if-nez v0, :cond_63

    .line 245
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "name":Ljava/lang/String;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2c

    move-object v1, p1

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    iput-object v1, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    .line 260
    if-eqz p3, :cond_5b

    .line 262
    invoke-static {p3}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v1

    iput-object v1, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    .line 265
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sget-boolean v3, Ljava/util/zip/ZipFile;->usemmap:Z

    invoke-static {v0, p2, v1, v2, v3}, Ljava/util/zip/ZipFile;->open(Ljava/lang/String;IJZ)J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 269
    iput-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    .line 270
    invoke-static {v1, v2}, Ljava/util/zip/ZipFile;->getTotal(J)I

    move-result v1

    iput v1, p0, Ljava/util/zip/ZipFile;->total:I

    .line 271
    iget-wide v1, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v1, v2}, Ljava/util/zip/ZipFile;->startsWithLOC(J)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/zip/ZipFile;->locsig:Z

    .line 273
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 274
    return-void

    .line 261
    :cond_5b
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "charset is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    .end local v0    # "name":Ljava/lang/String;
    :cond_63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal mode: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 323
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 159
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 303
    return-void
.end method

.method static synthetic blacklist access$000(Ljava/util/zip/ZipFile;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Ljava/util/zip/ZipFile;

    .line 64
    iget-object v0, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic blacklist access$100(Ljava/util/zip/ZipFile;Ljava/util/zip/Inflater;)V
    .registers 2
    .param p0, "x0"    # Ljava/util/zip/ZipFile;
    .param p1, "x1"    # Ljava/util/zip/Inflater;

    .line 64
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;->releaseInflater(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method static synthetic blacklist access$1000(JJ)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 64
    invoke-static {p0, p1, p2, p3}, Ljava/util/zip/ZipFile;->freeEntry(JJ)V

    return-void
.end method

.method static synthetic blacklist access$1100(J)J
    .registers 4
    .param p0, "x0"    # J

    .line 64
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getEntryCSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$1200(J)J
    .registers 4
    .param p0, "x0"    # J

    .line 64
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$1300(Ljava/util/zip/ZipFile;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/zip/ZipFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpenOrZipException()V

    return-void
.end method

.method static synthetic blacklist access$1400(JJJ[BII)I
    .registers 10
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # [B
    .param p7, "x4"    # I
    .param p8, "x5"    # I

    .line 64
    invoke-static/range {p0 .. p8}, Ljava/util/zip/ZipFile;->read(JJJ[BII)I

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$200(Ljava/util/zip/ZipFile;)V
    .registers 1
    .param p0, "x0"    # Ljava/util/zip/ZipFile;

    .line 64
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    return-void
.end method

.method static synthetic blacklist access$300(Ljava/util/zip/ZipFile;)I
    .registers 2
    .param p0, "x0"    # Ljava/util/zip/ZipFile;

    .line 64
    iget v0, p0, Ljava/util/zip/ZipFile;->total:I

    return v0
.end method

.method static synthetic blacklist access$400(Ljava/util/zip/ZipFile;)J
    .registers 3
    .param p0, "x0"    # Ljava/util/zip/ZipFile;

    .line 64
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    return-wide v0
.end method

.method static synthetic blacklist access$500(JI)J
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 64
    invoke-static {p0, p1, p2}, Ljava/util/zip/ZipFile;->getNextEntry(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic blacklist access$600(Ljava/util/zip/ZipFile;)Z
    .registers 2
    .param p0, "x0"    # Ljava/util/zip/ZipFile;

    .line 64
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    return v0
.end method

.method static synthetic blacklist access$700(J)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # J

    .line 64
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getZipMessage(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$800(Ljava/util/zip/ZipFile;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/util/zip/ZipFile;

    .line 64
    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$900(Ljava/util/zip/ZipFile;Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    .registers 5
    .param p0, "x0"    # Ljava/util/zip/ZipFile;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J

    .line 64
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method private static native greylist close(J)V
.end method

.method private greylist-max-o ensureOpen()V
    .registers 5

    .line 752
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-nez v0, :cond_15

    .line 756
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 759
    return-void

    .line 757
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The object is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpenOrZipException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 762
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-nez v0, :cond_5

    .line 765
    return-void

    .line 763
    :cond_5
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "ZipFile closed"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native greylist-max-o freeEntry(JJ)V
.end method

.method private static native greylist-max-o getCommentBytes(J)[B
.end method

.method private static native greylist getEntry(J[BZ)J
.end method

.method private static native greylist-max-o getEntryBytes(JI)[B
.end method

.method private static native greylist-max-o getEntryCSize(J)J
.end method

.method private static native greylist-max-o getEntryCrc(J)J
.end method

.method private static native greylist-max-o getEntryFlag(J)I
.end method

.method private static native greylist-max-o getEntryMethod(J)I
.end method

.method private static native greylist-max-o getEntrySize(J)J
.end method

.method private static native greylist-max-o getEntryTime(J)J
.end method

.method private static native greylist-max-o getFileDescriptor(J)I
.end method

.method private greylist-max-o getInflater()Ljava/util/zip/Inflater;
    .registers 4

    .line 507
    iget-object v0, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v0

    .line 508
    :cond_3
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Inflater;

    move-object v2, v1

    .local v2, "inf":Ljava/util/zip/Inflater;
    if-eqz v1, :cond_16

    .line 509
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->ended()Z

    move-result v1

    if-nez v1, :cond_3

    .line 510
    monitor-exit v0

    return-object v2

    .line 513
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1e

    .line 514
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    return-object v0

    .line 513
    .end local v2    # "inf":Ljava/util/zip/Inflater;
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private static native greylist-max-o getNextEntry(JI)J
.end method

.method private static native greylist-max-o getTotal(J)I
.end method

.method private greylist-max-o getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jzentry"    # J

    .line 617
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0}, Ljava/util/zip/ZipEntry;-><init>()V

    .line 618
    .local v0, "e":Ljava/util/zip/ZipEntry;
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryFlag(J)I

    move-result v1

    iput v1, v0, Ljava/util/zip/ZipEntry;->flag:I

    .line 619
    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 620
    iput-object p1, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    goto :goto_36

    .line 622
    :cond_11
    invoke-static {p2, p3, v1}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v2

    .line 623
    .local v2, "bname":[B
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v3

    if-nez v3, :cond_2d

    iget v3, v0, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_2d

    .line 624
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v2

    invoke-virtual {v3, v2, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    goto :goto_36

    .line 626
    :cond_2d
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v2

    invoke-virtual {v3, v2, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 629
    .end local v2    # "bname":[B
    :goto_36
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryTime(J)J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 630
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryCrc(J)J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->crc:J

    .line 631
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->size:J

    .line 632
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryCSize(J)J

    move-result-wide v2

    iput-wide v2, v0, Ljava/util/zip/ZipEntry;->csize:J

    .line 633
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryMethod(J)I

    move-result v2

    iput v2, v0, Ljava/util/zip/ZipEntry;->method:I

    .line 634
    const/4 v2, 0x1

    invoke-static {p2, p3, v2}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 635
    const/4 v1, 0x2

    invoke-static {p2, p3, v1}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v1

    .line 636
    .local v1, "bcomm":[B
    if-nez v1, :cond_67

    .line 637
    const/4 v2, 0x0

    iput-object v2, v0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    goto :goto_88

    .line 639
    :cond_67
    iget-object v2, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v2}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v2

    if-nez v2, :cond_7f

    iget v2, v0, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_7f

    .line 640
    iget-object v2, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    goto :goto_88

    .line 642
    :cond_7f
    iget-object v2, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v3, v1

    invoke-virtual {v2, v1, v3}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 645
    :goto_88
    return-object v0
.end method

.method private static native greylist-max-o getZipMessage(J)Ljava/lang/String;
.end method

.method private static native greylist-max-o open(Ljava/lang/String;IJZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o read(JJJ[BII)I
.end method

.method private greylist-max-o releaseInflater(Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "inf"    # Ljava/util/zip/Inflater;

    .line 521
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->ended()Z

    move-result v0

    if-nez v0, :cond_16

    .line 522
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    .line 523
    iget-object v0, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v0

    .line 524
    :try_start_c
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 525
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_13

    throw v1

    .line 527
    :cond_16
    :goto_16
    return-void
.end method

.method private static native greylist-max-o startsWithLOC(J)Z
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-eqz v0, :cond_5

    .line 670
    return-void

    .line 672
    :cond_5
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_c

    .line 673
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 675
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    .line 677
    monitor-enter p0

    .line 682
    :try_start_10
    iget-object v0, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    if-eqz v0, :cond_59

    .line 684
    iget-object v0, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_8e

    .line 685
    :try_start_17
    iget-object v1, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54

    .line 686
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 687
    .local v1, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    iget-object v2, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 688
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 689
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 690
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/Inflater;

    .line 691
    .local v4, "inf":Ljava/util/zip/Inflater;
    if-eqz v4, :cond_53

    .line 692
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 694
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    .end local v4    # "inf":Ljava/util/zip/Inflater;
    :cond_53
    goto :goto_33

    .line 696
    .end local v1    # "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    :cond_54
    monitor-exit v0

    goto :goto_59

    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_17 .. :try_end_58} :catchall_56

    .end local p0    # "this":Ljava/util/zip/ZipFile;
    :try_start_58
    throw v1

    .line 700
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    :cond_59
    :goto_59
    iget-object v0, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    if-eqz v0, :cond_74

    .line 704
    iget-object v0, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v0
    :try_end_60
    .catchall {:try_start_58 .. :try_end_60} :catchall_8e

    .line 705
    :goto_60
    :try_start_60
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/zip/Inflater;

    move-object v2, v1

    .local v2, "inf":Ljava/util/zip/Inflater;
    if-eqz v1, :cond_6f

    .line 706
    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    goto :goto_60

    .line 708
    :cond_6f
    monitor-exit v0

    goto :goto_74

    .end local v2    # "inf":Ljava/util/zip/Inflater;
    :catchall_71
    move-exception v1

    monitor-exit v0
    :try_end_73
    .catchall {:try_start_60 .. :try_end_73} :catchall_71

    .end local p0    # "this":Ljava/util/zip/ZipFile;
    :try_start_73
    throw v1

    .line 713
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    :cond_74
    :goto_74
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_83

    .line 715
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 716
    .local v0, "zf":J
    iput-wide v2, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 718
    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->close(J)V

    .line 721
    .end local v0    # "zf":J
    :cond_83
    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    if-eqz v0, :cond_8c

    .line 722
    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 724
    :cond_8c
    monitor-exit p0

    .line 725
    return-void

    .line 724
    :catchall_8e
    move-exception v0

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_73 .. :try_end_90} :catchall_8e

    throw v0
.end method

.method public whitelist core-platform-api test-api entries()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 597
    new-instance v0, Ljava/util/zip/ZipFile$ZipEntryIterator;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;-><init>(Ljava/util/zip/ZipFile;)V

    return-object v0
.end method

.method protected whitelist core-platform-api test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_7

    .line 744
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 746
    :cond_7
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 747
    return-void
.end method

.method public whitelist core-platform-api test-api getComment()Ljava/lang/String;
    .registers 4

    .line 335
    monitor-enter p0

    .line 336
    :try_start_1
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 337
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->getCommentBytes(J)[B

    move-result-object v0

    .line 338
    .local v0, "bcomm":[B
    if-nez v0, :cond_f

    .line 339
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 340
    :cond_f
    iget-object v1, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 341
    .end local v0    # "bcomm":[B
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public whitelist core-platform-api test-api getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 353
    if-eqz p1, :cond_2d

    .line 356
    const-wide/16 v0, 0x0

    .line 357
    .local v0, "jzentry":J
    monitor-enter p0

    .line 358
    :try_start_5
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 359
    iget-wide v2, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v4, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v4, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    move-result-wide v2

    move-wide v0, v2

    .line 360
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_27

    .line 361
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 362
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    iget-wide v3, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v3, v4, v0, v1}, Ljava/util/zip/ZipFile;->freeEntry(JJ)V

    .line 363
    monitor-exit p0

    return-object v2

    .line 365
    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :cond_27
    monitor-exit p0

    .line 366
    const/4 v2, 0x0

    return-object v2

    .line 365
    :catchall_2a
    move-exception v2

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw v2

    .line 354
    .end local v0    # "jzentry":J
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getFileDescriptor()I
    .registers 3

    .line 903
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->getFileDescriptor(J)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 11
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    if-eqz p1, :cond_98

    .line 397
    const-wide/16 v0, 0x0

    .line 398
    .local v0, "jzentry":J
    const/4 v2, 0x0

    .line 399
    .local v2, "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    monitor-enter p0

    .line 400
    :try_start_6
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 401
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_28

    iget v3, p1, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_28

    .line 408
    iget-wide v5, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    iget-object v7, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/zip/ZipCoder;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v5, v6, v3, v4}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    move-result-wide v3

    move-wide v0, v3

    goto :goto_37

    .line 412
    :cond_28
    iget-wide v5, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    iget-object v7, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v5, v6, v3, v4}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    move-result-wide v3

    move-wide v0, v3

    .line 414
    :goto_37
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    if-nez v5, :cond_40

    .line 415
    monitor-exit p0

    return-object v6

    .line 417
    :cond_40
    new-instance v5, Ljava/util/zip/ZipFile$ZipFileInputStream;

    invoke-direct {v5, p0, v0, v1}, Ljava/util/zip/ZipFile$ZipFileInputStream;-><init>(Ljava/util/zip/ZipFile;J)V

    move-object v2, v5

    .line 419
    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->getEntryMethod(J)I

    move-result v5

    if-eqz v5, :cond_87

    const/16 v6, 0x8

    if-ne v5, v6, :cond_7f

    .line 427
    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v5

    const-wide/16 v7, 0x2

    add-long/2addr v5, v7

    .line 431
    .local v5, "size":J
    const-wide/32 v7, 0x10000

    cmp-long v7, v5, v7

    if-lez v7, :cond_61

    const-wide/32 v5, 0x10000

    .line 432
    :cond_61
    cmp-long v3, v5, v3

    if-gtz v3, :cond_67

    const-wide/16 v5, 0x1000

    .line 433
    :cond_67
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->getInflater()Ljava/util/zip/Inflater;

    move-result-object v3

    .line 434
    .local v3, "inf":Ljava/util/zip/Inflater;
    new-instance v4, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;

    long-to-int v7, v5

    invoke-direct {v4, p0, v2, v3, v7}, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/Inflater;I)V

    .line 436
    .local v4, "is":Ljava/io/InputStream;
    iget-object v7, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v7
    :try_end_74
    .catchall {:try_start_6 .. :try_end_74} :catchall_95

    .line 437
    :try_start_74
    iget-object v8, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    monitor-exit v7
    :try_end_7a
    .catchall {:try_start_74 .. :try_end_7a} :catchall_7c

    .line 439
    :try_start_7a
    monitor-exit p0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_95

    return-object v4

    .line 438
    :catchall_7c
    move-exception v8

    :try_start_7d
    monitor-exit v7
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    .end local v0    # "jzentry":J
    .end local v2    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .end local p0    # "this":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    :try_start_7e
    throw v8

    .line 441
    .end local v3    # "inf":Ljava/util/zip/Inflater;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "size":J
    .restart local v0    # "jzentry":J
    .restart local v2    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_7f
    new-instance v3, Ljava/util/zip/ZipException;

    const-string v4, "invalid compression method"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .end local v0    # "jzentry":J
    .end local v2    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .end local p0    # "this":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    throw v3

    .line 421
    .restart local v0    # "jzentry":J
    .restart local v2    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_87
    iget-object v3, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v3
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_95

    .line 422
    :try_start_8a
    iget-object v4, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    monitor-exit v3
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_92

    .line 424
    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_95

    return-object v2

    .line 423
    :catchall_92
    move-exception v4

    :try_start_93
    monitor-exit v3
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    .end local v0    # "jzentry":J
    .end local v2    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .end local p0    # "this":Ljava/util/zip/ZipFile;
    .end local p1    # "entry":Ljava/util/zip/ZipEntry;
    :try_start_94
    throw v4

    .line 443
    .restart local v0    # "jzentry":J
    .restart local v2    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .restart local p0    # "this":Ljava/util/zip/ZipFile;
    .restart local p1    # "entry":Ljava/util/zip/ZipEntry;
    :catchall_95
    move-exception v3

    monitor-exit p0
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_95

    throw v3

    .line 395
    .end local v0    # "jzentry":J
    .end local v2    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :cond_98
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entry"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api getName()Ljava/lang/String;
    .registers 2

    .line 537
    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 656
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 657
    iget v0, p0, Ljava/util/zip/ZipFile;->total:I

    return v0
.end method

.method public greylist-max-o startsWithLocHeader()Z
    .registers 2

    .line 895
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->locsig:Z

    return v0
.end method

.method public whitelist core-platform-api test-api stream()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .line 610
    new-instance v0, Ljava/util/zip/ZipFile$ZipEntryIterator;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;-><init>(Ljava/util/zip/ZipFile;)V

    .line 611
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->size()I

    move-result v1

    int-to-long v1, v1

    .line 610
    const/16 v3, 0x511

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
