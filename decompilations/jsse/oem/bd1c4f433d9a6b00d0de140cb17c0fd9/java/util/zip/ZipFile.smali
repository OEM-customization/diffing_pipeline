.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipEntryIterator;,
        Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;,
        Ljava/util/zip/ZipFile$ZipFileInputStream;
    }
.end annotation


# static fields
.field private static final DEFLATED:I = 0x8

.field private static final JZENTRY_COMMENT:I = 0x2

.field private static final JZENTRY_EXTRA:I = 0x1

.field private static final JZENTRY_NAME:I = 0x0

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1

.field private static final STORED:I

.field private static final usemmap:Z


# instance fields
.field private volatile closeRequested:Z

.field private final fileToRemoveOnClose:Ljava/io/File;

.field private final guard:Ldalvik/system/CloseGuard;

.field private inflaterCache:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field private jzfile:J

.field private final locsig:Z

.field private final name:Ljava/lang/String;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/InputStream;",
            "Ljava/util/zip/Inflater;",
            ">;"
        }
    .end annotation
.end field

.field private final total:I

.field private zc:Ljava/util/zip/ZipCoder;


# direct methods
.method static synthetic -get0(Ljava/util/zip/ZipFile;)Z
    .registers 2
    .param p0, "-this"    # Ljava/util/zip/ZipFile;

    .prologue
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    return v0
.end method

.method static synthetic -get1(Ljava/util/zip/ZipFile;)J
    .registers 3
    .param p0, "-this"    # Ljava/util/zip/ZipFile;

    .prologue
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    return-wide v0
.end method

.method static synthetic -get2(Ljava/util/zip/ZipFile;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljava/util/zip/ZipFile;

    .prologue
    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Ljava/util/zip/ZipFile;)Ljava/util/Map;
    .registers 2
    .param p0, "-this"    # Ljava/util/zip/ZipFile;

    .prologue
    iget-object v0, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Ljava/util/zip/ZipFile;)I
    .registers 2
    .param p0, "-this"    # Ljava/util/zip/ZipFile;

    .prologue
    iget v0, p0, Ljava/util/zip/ZipFile;->total:I

    return v0
.end method

.method static synthetic -wrap0(JJJ[BII)I
    .registers 11
    .param p0, "jzfile"    # J
    .param p2, "jzentry"    # J
    .param p4, "pos"    # J
    .param p6, "b"    # [B
    .param p7, "off"    # I
    .param p8, "len"    # I

    .prologue
    invoke-static/range {p0 .. p8}, Ljava/util/zip/ZipFile;->read(JJJ[BII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(J)Ljava/lang/String;
    .registers 4
    .param p0, "jzfile"    # J

    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getZipMessage(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/util/zip/ZipFile;Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    .registers 6
    .param p0, "-this"    # Ljava/util/zip/ZipFile;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jzentry"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(J)J
    .registers 4
    .param p0, "jzentry"    # J

    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getEntryCSize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(J)J
    .registers 4
    .param p0, "jzentry"    # J

    .prologue
    invoke-static {p0, p1}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(JI)J
    .registers 5
    .param p0, "jzfile"    # J
    .param p2, "i"    # I

    .prologue
    invoke-static {p0, p1, p2}, Ljava/util/zip/ZipFile;->getNextEntry(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap6(Ljava/util/zip/ZipFile;)V
    .registers 1
    .param p0, "-this"    # Ljava/util/zip/ZipFile;

    .prologue
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpenOrZipException()V

    return-void
.end method

.method static synthetic -wrap7(Ljava/util/zip/ZipFile;)V
    .registers 1
    .param p0, "-this"    # Ljava/util/zip/ZipFile;

    .prologue
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    return-void
.end method

.method static synthetic -wrap8(JJ)V
    .registers 4
    .param p0, "jzfile"    # J
    .param p2, "jzentry"    # J

    .prologue
    invoke-static {p0, p1, p2, p3}, Ljava/util/zip/ZipFile;->freeEntry(JJ)V

    return-void
.end method

.method static synthetic -wrap9(Ljava/util/zip/ZipFile;Ljava/util/zip/Inflater;)V
    .registers 2
    .param p0, "-this"    # Ljava/util/zip/ZipFile;
    .param p1, "inf"    # Ljava/util/zip/Inflater;

    .prologue
    invoke-direct {p0, p1}, Ljava/util/zip/ZipFile;->releaseInflater(Ljava/util/zip/Inflater;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x1

    sput-boolean v0, Ljava/util/zip/ZipFile;->usemmap:Z

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/io/File;ILjava/nio/charset/Charset;)V
    .registers 12
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v5, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    .line 71
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v5

    iput-object v5, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    .line 354
    new-instance v5, Ljava/util/WeakHashMap;

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v5, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    .line 498
    new-instance v5, Ljava/util/ArrayDeque;

    invoke-direct {v5}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v5, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    .line 202
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_23

    .line 203
    and-int/lit8 v5, p2, -0x6

    if-eqz v5, :cond_41

    .line 204
    :cond_23
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Illegal mode: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 205
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 204
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 209
    :cond_41
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 210
    .local v2, "length":J
    const-wide/16 v6, 0x16

    cmp-long v5, v2, v6

    if-gez v5, :cond_91

    .line 211
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_73

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_73

    .line 212
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File doesn\'t exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 214
    :cond_73
    new-instance v4, Ljava/util/zip/ZipException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File too short to be a zip file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 219
    :cond_91
    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_96

    move-object v4, p1

    :cond_96
    iput-object v4, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "name":Ljava/lang/String;
    if-nez p3, :cond_a7

    .line 231
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "charset is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 232
    :cond_a7
    invoke-static {p3}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v4

    iput-object v4, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sget-boolean v6, Ljava/util/zip/ZipFile;->usemmap:Z

    invoke-static {v1, p2, v4, v5, v6}, Ljava/util/zip/ZipFile;->open(Ljava/lang/String;IJZ)J

    move-result-wide v4

    iput-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 239
    iput-object v1, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    .line 240
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->getTotal(J)I

    move-result v4

    iput v4, p0, Ljava/util/zip/ZipFile;->total:I

    .line 241
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->startsWithLOC(J)Z

    move-result v4

    iput-boolean v4, p0, Ljava/util/zip/ZipFile;->locsig:Z

    .line 242
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 245
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->size()I

    move-result v4

    if-eqz v4, :cond_dd

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e9

    .line 246
    :cond_dd
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 247
    new-instance v4, Ljava/util/zip/ZipException;

    const-string/jumbo v5, "No entries"

    invoke-direct {v4, v5}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 250
    :cond_e9
    iget-object v4, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "close"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/nio/charset/Charset;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 300
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;ILjava/nio/charset/Charset;)V

    .line 280
    return-void
.end method

.method private static native close(J)V
.end method

.method private ensureOpen()V
    .registers 5

    .prologue
    .line 705
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-eqz v0, :cond_d

    .line 706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_d
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    .line 710
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The object is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_1e
    return-void
.end method

.method private ensureOpenOrZipException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 715
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-eqz v0, :cond_d

    .line 716
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "ZipFile closed"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_d
    return-void
.end method

.method private static native freeEntry(JJ)V
.end method

.method private static native getCommentBytes(J)[B
.end method

.method private static native getEntry(J[BZ)J
.end method

.method private static native getEntryBytes(JI)[B
.end method

.method private static native getEntryCSize(J)J
.end method

.method private static native getEntryCrc(J)J
.end method

.method private static native getEntryFlag(J)I
.end method

.method private static native getEntryMethod(J)I
.end method

.method private static native getEntrySize(J)J
.end method

.method private static native getEntryTime(J)J
.end method

.method private static native getFileDescriptor(J)I
.end method

.method private getInflater()Ljava/util/zip/Inflater;
    .registers 4

    .prologue
    .line 475
    iget-object v2, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v2

    .line 476
    :cond_3
    :try_start_3
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/Inflater;

    .local v0, "inf":Ljava/util/zip/Inflater;
    if-eqz v0, :cond_15

    .line 477
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->ended()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1d

    move-result v1

    if-nez v1, :cond_3

    monitor-exit v2

    .line 478
    return-object v0

    :cond_15
    monitor-exit v2

    .line 482
    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    return-object v1

    .line 475
    .end local v0    # "inf":Ljava/util/zip/Inflater;
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static native getNextEntry(JI)J
.end method

.method private static native getTotal(J)I
.end method

.method private getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;
    .registers 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jzentry"    # J

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 585
    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2}, Ljava/util/zip/ZipEntry;-><init>()V

    .line 586
    .local v2, "e":Ljava/util/zip/ZipEntry;
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryFlag(J)I

    move-result v3

    iput v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    .line 587
    if-eqz p1, :cond_41

    .line 588
    iput-object p1, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    .line 597
    :goto_11
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryTime(J)J

    move-result-wide v4

    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 598
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryCrc(J)J

    move-result-wide v4

    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->crc:J

    .line 599
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v4

    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->size:J

    .line 600
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryCSize(J)J

    move-result-wide v4

    iput-wide v4, v2, Ljava/util/zip/ZipEntry;->csize:J

    .line 601
    invoke-static {p2, p3}, Ljava/util/zip/ZipFile;->getEntryMethod(J)I

    move-result v3

    iput v3, v2, Ljava/util/zip/ZipEntry;->method:I

    .line 602
    const/4 v3, 0x1

    invoke-static {p2, p3, v3}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v3

    invoke-virtual {v2, v3, v6}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 603
    const/4 v3, 0x2

    invoke-static {p2, p3, v3}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v0

    .line 604
    .local v0, "bcomm":[B
    if-nez v0, :cond_67

    .line 605
    iput-object v7, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    .line 613
    :goto_40
    return-object v2

    .line 590
    .end local v0    # "bcomm":[B
    :cond_41
    invoke-static {p2, p3, v6}, Ljava/util/zip/ZipFile;->getEntryBytes(JI)[B

    move-result-object v1

    .line 591
    .local v1, "bname":[B
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v3

    if-nez v3, :cond_5d

    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_5d

    .line 592
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v1

    invoke-virtual {v3, v1, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    goto :goto_11

    .line 594
    :cond_5d
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v1

    invoke-virtual {v3, v1, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    goto :goto_11

    .line 607
    .end local v1    # "bname":[B
    .restart local v0    # "bcomm":[B
    :cond_67
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v3}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v3

    if-nez v3, :cond_7f

    iget v3, v2, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_7f

    .line 608
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v0

    invoke-virtual {v3, v0, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    goto :goto_40

    .line 610
    :cond_7f
    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v4, v0

    invoke-virtual {v3, v0, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljava/util/zip/ZipEntry;->comment:Ljava/lang/String;

    goto :goto_40
.end method

.method private static native getZipMessage(J)Ljava/lang/String;
.end method

.method private static native open(Ljava/lang/String;IJZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native read(JJJ[BII)I
.end method

.method private releaseInflater(Ljava/util/zip/Inflater;)V
    .registers 4
    .param p1, "inf"    # Ljava/util/zip/Inflater;

    .prologue
    .line 489
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->ended()Z

    move-result v0

    if-nez v0, :cond_12

    .line 490
    invoke-virtual {p1}, Ljava/util/zip/Inflater;->reset()V

    .line 491
    iget-object v1, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v1

    .line 492
    :try_start_c
    iget-object v0, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_13

    monitor-exit v1

    .line 495
    :cond_12
    return-void

    .line 491
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native startsWithLOC(J)Z
.end method


# virtual methods
.method public close()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 637
    iget-boolean v6, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    if-eqz v6, :cond_7

    .line 638
    return-void

    .line 639
    :cond_7
    iget-object v6, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v6}, Ldalvik/system/CloseGuard;->close()V

    .line 640
    const/4 v6, 0x1

    iput-boolean v6, p0, Ljava/util/zip/ZipFile;->closeRequested:Z

    .line 642
    monitor-enter p0

    .line 644
    :try_start_10
    iget-object v7, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v7
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_53

    .line 645
    :try_start_13
    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_56

    .line 646
    new-instance v0, Ljava/util/HashMap;

    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 647
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    iget-object v6, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 648
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "e$iterator":Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 649
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 650
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/Inflater;

    .line 651
    .local v3, "inf":Ljava/util/zip/Inflater;
    if-eqz v3, :cond_2f

    .line 652
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V
    :try_end_4f
    .catchall {:try_start_13 .. :try_end_4f} :catchall_50

    goto :goto_2f

    .line 644
    .end local v0    # "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/InputStream;Ljava/util/zip/Inflater;>;"
    .end local v2    # "e$iterator":Ljava/util/Iterator;
    .end local v3    # "inf":Ljava/util/zip/Inflater;
    :catchall_50
    move-exception v6

    :try_start_51
    monitor-exit v7

    throw v6
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_53

    .line 642
    :catchall_53
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_56
    :try_start_56
    monitor-exit v7

    .line 660
    iget-object v7, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    monitor-enter v7
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_53

    .line 661
    :goto_5a
    :try_start_5a
    iget-object v6, p0, Ljava/util/zip/ZipFile;->inflaterCache:Ljava/util/Deque;

    invoke-interface {v6}, Ljava/util/Deque;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/Inflater;

    .restart local v3    # "inf":Ljava/util/zip/Inflater;
    if-eqz v3, :cond_6b

    .line 662
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_68

    goto :goto_5a

    .line 660
    .end local v3    # "inf":Ljava/util/zip/Inflater;
    :catchall_68
    move-exception v6

    :try_start_69
    monitor-exit v7

    throw v6

    .restart local v3    # "inf":Ljava/util/zip/Inflater;
    :cond_6b
    monitor-exit v7

    .line 666
    iget-wide v6, p0, Ljava/util/zip/ZipFile;->jzfile:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_7b

    .line 668
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 669
    .local v4, "zf":J
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Ljava/util/zip/ZipFile;->jzfile:J

    .line 671
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->close(J)V

    .line 674
    .end local v4    # "zf":J
    :cond_7b
    iget-object v6, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    if-eqz v6, :cond_84

    .line 675
    iget-object v6, p0, Ljava/util/zip/ZipFile;->fileToRemoveOnClose:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_84
    .catchall {:try_start_69 .. :try_end_84} :catchall_53

    :cond_84
    monitor-exit p0

    .line 678
    return-void
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    new-instance v0, Ljava/util/zip/ZipFile$ZipEntryIterator;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;-><init>(Ljava/util/zip/ZipFile;)V

    return-object v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 695
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 696
    iget-object v0, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 699
    :cond_9
    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->close()V

    .line 700
    return-void
.end method

.method public getComment()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 312
    monitor-enter p0

    .line 313
    :try_start_2
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 314
    iget-wide v2, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v2, v3}, Ljava/util/zip/ZipFile;->getCommentBytes(J)[B
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_18

    move-result-object v0

    .line 315
    .local v0, "bcomm":[B
    if-nez v0, :cond_f

    monitor-exit p0

    .line 316
    return-object v1

    .line 317
    :cond_f
    :try_start_f
    iget-object v1, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_18

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 312
    .end local v0    # "bcomm":[B
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 330
    if-nez p1, :cond_c

    .line 331
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "name"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    :cond_c
    const-wide/16 v0, 0x0

    .line 334
    .local v0, "jzentry":J
    monitor-enter p0

    .line 335
    :try_start_f
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 336
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v3, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v3, p1}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v6, 0x1

    invoke-static {v4, v5, v3, v6}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    move-result-wide v0

    .line 337
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_30

    .line 338
    invoke-direct {p0, p1, v0, v1}, Ljava/util/zip/ZipFile;->getZipEntry(Ljava/lang/String;J)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 339
    .local v2, "ze":Ljava/util/zip/ZipEntry;
    iget-wide v4, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v4, v5, v0, v1}, Ljava/util/zip/ZipFile;->freeEntry(JJ)V
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_32

    monitor-exit p0

    .line 340
    return-object v2

    .end local v2    # "ze":Ljava/util/zip/ZipEntry;
    :cond_30
    monitor-exit p0

    .line 343
    return-object v7

    .line 334
    :catchall_32
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getFileDescriptor()I
    .registers 3

    .prologue
    .line 833
    iget-wide v0, p0, Ljava/util/zip/ZipFile;->jzfile:J

    invoke-static {v0, v1}, Ljava/util/zip/ZipFile;->getFileDescriptor(J)I

    move-result v0

    return v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 14
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 371
    if-nez p1, :cond_b

    .line 372
    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "entry"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 374
    :cond_b
    const-wide/16 v4, 0x0

    .line 375
    .local v4, "jzentry":J
    const/4 v0, 0x0

    .line 376
    .local v0, "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    monitor-enter p0

    .line 377
    :try_start_f
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 378
    iget-object v8, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    invoke-virtual {v8}, Ljava/util/zip/ZipCoder;->isUTF8()Z

    move-result v8

    if-nez v8, :cond_38

    iget v8, p1, Ljava/util/zip/ZipEntry;->flag:I

    and-int/lit16 v8, v8, 0x800

    if-eqz v8, :cond_38

    .line 380
    iget-wide v8, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v10, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    iget-object v11, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipCoder;->getBytesUTF8(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_a1

    move-result-wide v4

    .line 385
    :goto_2f
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_48

    .line 386
    const/4 v8, 0x0

    monitor-exit p0

    return-object v8

    .line 383
    :cond_38
    :try_start_38
    iget-wide v8, p0, Ljava/util/zip/ZipFile;->jzfile:J

    iget-object v10, p0, Ljava/util/zip/ZipFile;->zc:Ljava/util/zip/ZipCoder;

    iget-object v11, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/zip/ZipCoder;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Ljava/util/zip/ZipFile;->getEntry(J[BZ)J

    move-result-wide v4

    goto :goto_2f

    .line 388
    :cond_48
    new-instance v1, Ljava/util/zip/ZipFile$ZipFileInputStream;

    invoke-direct {v1, p0, v4, v5}, Ljava/util/zip/ZipFile$ZipFileInputStream;-><init>(Ljava/util/zip/ZipFile;J)V
    :try_end_4d
    .catchall {:try_start_38 .. :try_end_4d} :catchall_a1

    .line 390
    .end local v0    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .local v1, "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :try_start_4d
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->getEntryMethod(J)I

    move-result v8

    sparse-switch v8, :sswitch_data_a4

    .line 409
    new-instance v8, Ljava/util/zip/ZipException;

    const-string/jumbo v9, "invalid compression method"

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_5d

    .line 376
    :catchall_5d
    move-exception v8

    move-object v0, v1

    .end local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :goto_5f
    monitor-exit p0

    throw v8

    .line 392
    .restart local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :sswitch_61
    :try_start_61
    iget-object v9, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v9
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5d

    .line 393
    :try_start_64
    iget-object v8, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    const/4 v10, 0x0

    invoke-interface {v8, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_6d

    :try_start_6a
    monitor-exit v9
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_5d

    monitor-exit p0

    .line 395
    return-object v1

    .line 392
    :catchall_6d
    move-exception v8

    :try_start_6e
    monitor-exit v9

    throw v8

    .line 398
    :sswitch_70
    invoke-static {v4, v5}, Ljava/util/zip/ZipFile;->getEntrySize(J)J

    move-result-wide v8

    const-wide/16 v10, 0x2

    add-long v6, v8, v10

    .line 399
    .local v6, "size":J
    const-wide/32 v8, 0x10000

    cmp-long v8, v6, v8

    if-lez v8, :cond_81

    const-wide/16 v6, 0x2000

    .line 400
    :cond_81
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_89

    const-wide/16 v6, 0x1000

    .line 401
    :cond_89
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->getInflater()Ljava/util/zip/Inflater;

    move-result-object v2

    .line 403
    .local v2, "inf":Ljava/util/zip/Inflater;
    new-instance v3, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;

    long-to-int v8, v6

    invoke-direct {v3, p0, v1, v2, v8}, Ljava/util/zip/ZipFile$ZipFileInflaterInputStream;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipFile$ZipFileInputStream;Ljava/util/zip/Inflater;I)V

    .line 404
    .local v3, "is":Ljava/io/InputStream;
    iget-object v9, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    monitor-enter v9
    :try_end_96
    .catchall {:try_start_6e .. :try_end_96} :catchall_5d

    .line 405
    :try_start_96
    iget-object v8, p0, Ljava/util/zip/ZipFile;->streams:Ljava/util/Map;

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9b
    .catchall {:try_start_96 .. :try_end_9b} :catchall_9e

    :try_start_9b
    monitor-exit v9
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_5d

    monitor-exit p0

    .line 407
    return-object v3

    .line 404
    :catchall_9e
    move-exception v8

    :try_start_9f
    monitor-exit v9

    throw v8
    :try_end_a1
    .catchall {:try_start_9f .. :try_end_a1} :catchall_5d

    .line 376
    .end local v1    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    .end local v2    # "inf":Ljava/util/zip/Inflater;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v6    # "size":J
    .restart local v0    # "in":Ljava/util/zip/ZipFile$ZipFileInputStream;
    :catchall_a1
    move-exception v8

    goto :goto_5f

    .line 390
    nop

    :sswitch_data_a4
    .sparse-switch
        0x0 -> :sswitch_61
        0x8 -> :sswitch_70
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 505
    iget-object v0, p0, Ljava/util/zip/ZipFile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 624
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->ensureOpen()V

    .line 625
    iget v0, p0, Ljava/util/zip/ZipFile;->total:I

    return v0
.end method

.method public startsWithLocHeader()Z
    .registers 2

    .prologue
    .line 827
    iget-boolean v0, p0, Ljava/util/zip/ZipFile;->locsig:Z

    return v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    new-instance v0, Ljava/util/zip/ZipFile$ZipEntryIterator;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile$ZipEntryIterator;-><init>(Ljava/util/zip/ZipFile;)V

    invoke-virtual {p0}, Ljava/util/zip/ZipFile;->size()I

    move-result v1

    int-to-long v2, v1

    .line 580
    const/16 v1, 0x511

    .line 578
    invoke-static {v0, v2, v3, v1}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object v0

    .line 581
    const/4 v1, 0x0

    .line 578
    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
