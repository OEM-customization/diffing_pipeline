.class public final Lcom/android/okhttp/internal/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/DiskLruCache$Entry;,
        Lcom/android/okhttp/internal/DiskLruCache$Editor;,
        Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final blacklist CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final blacklist DIRTY:Ljava/lang/String; = "DIRTY"

.field static final blacklist JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final blacklist JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final blacklist JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final blacklist LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final blacklist MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final blacklist NULL_SINK:Lcom/android/okhttp/okio/Sink;

.field private static final blacklist READ:Ljava/lang/String; = "READ"

.field private static final blacklist REMOVE:Ljava/lang/String; = "REMOVE"

.field static final blacklist VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final blacklist appVersion:I

.field private final blacklist cleanupRunnable:Ljava/lang/Runnable;

.field private blacklist closed:Z

.field private final blacklist directory:Ljava/io/File;

.field private final blacklist executor:Ljava/util/concurrent/Executor;

.field private final blacklist fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

.field private blacklist hasJournalErrors:Z

.field private blacklist initialized:Z

.field private final blacklist journalFile:Ljava/io/File;

.field private final blacklist journalFileBackup:Ljava/io/File;

.field private final blacklist journalFileTmp:Ljava/io/File;

.field private blacklist journalWriter:Lcom/android/okhttp/okio/BufferedSink;

.field private final blacklist lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist maxSize:J

.field private blacklist nextSequenceNumber:J

.field private blacklist redundantOpCount:I

.field private blacklist size:J

.field private final blacklist valueCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    nop

    .line 97
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 812
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$4;

    invoke-direct {v0}, Lcom/android/okhttp/internal/DiskLruCache$4;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .registers 14
    .param p1, "fileSystem"    # Lcom/android/okhttp/internal/io/FileSystem;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "executor"    # Ljava/util/concurrent/Executor;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 153
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 166
    iput-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    .line 170
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/DiskLruCache$1;-><init>(Lcom/android/okhttp/internal/DiskLruCache;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 191
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    .line 192
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    .line 193
    iput p3, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    .line 195
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 196
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 197
    iput p4, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    .line 198
    iput-wide p5, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    .line 199
    iput-object p7, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    .line 200
    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 90
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    return v0
.end method

.method static synthetic blacklist access$100(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 90
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    return v0
.end method

.method static synthetic blacklist access$1900(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic blacklist access$200(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic blacklist access$2100(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 5
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 90
    iget v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic blacklist access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    return-object v0
.end method

.method static synthetic blacklist access$2400()Lcom/android/okhttp/okio/Sink;
    .registers 1

    .line 90
    sget-object v0, Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;

    return-object v0
.end method

.method static synthetic blacklist access$2500(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p1, "x1"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic blacklist access$2600(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 90
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist access$400(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic blacklist access$502(Lcom/android/okhttp/internal/DiskLruCache;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method static synthetic blacklist access$602(Lcom/android/okhttp/internal/DiskLruCache;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z

    return p1
.end method

.method private declared-synchronized blacklist checkNotClosed()V
    .registers 3

    monitor-enter p0

    .line 631
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez v0, :cond_9

    .line 634
    monitor-exit p0

    return-void

    .line 632
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 630
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized blacklist completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    .registers 13
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 517
    :try_start_1
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->access$1700(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;

    move-result-object v0

    .line 518
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_112

    .line 523
    if-eqz p2, :cond_50

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_50

    .line 524
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_50

    .line 525
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->access$1800(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_36

    .line 529
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 530
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_118

    .line 531
    monitor-exit p0

    return-void

    .line 524
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 526
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V

    .line 527
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Newly created entry didn\'t create value for index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 536
    .end local v1    # "i":I
    :cond_50
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_51
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_91

    .line 537
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    .line 538
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_89

    .line 539
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v3, v2}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 540
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v1

    .line 541
    .local v3, "clean":Ljava/io/File;
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v4, v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 542
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    .line 543
    .local v4, "oldLength":J
    iget-object v6, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v6, v3}, Lcom/android/okhttp/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v6

    .line 544
    .local v6, "newLength":J
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 545
    iget-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 546
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_8e

    .line 548
    :cond_89
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v3, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 536
    .end local v2    # "dirty":Ljava/io/File;
    :cond_8e
    :goto_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 552
    .end local v1    # "i":I
    :cond_91
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 553
    const/4 v1, 0x0

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 554
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz v1, :cond_d4

    .line 555
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$802(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 556
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string v2, "CLEAN"

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 557
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 558
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 559
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 560
    if-eqz p2, :cond_f6

    .line 561
    iget-wide v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0, v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1602(Lcom/android/okhttp/internal/DiskLruCache$Entry;J)J

    goto :goto_f6

    .line 564
    :cond_d4
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 566
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 567
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 569
    :cond_f6
    :goto_f6
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 571
    iget-wide v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_109

    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_110

    .line 572
    :cond_109
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_110
    .catchall {:try_start_36 .. :try_end_110} :catchall_118

    .line 574
    :cond_110
    monitor-exit p0

    return-void

    .line 519
    :cond_112
    :try_start_112
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_118
    .catchall {:try_start_112 .. :try_end_118} :catchall_118

    .line 516
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local p1    # "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_118
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static blacklist create(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;
    .registers 15
    .param p0, "fileSystem"    # Lcom/android/okhttp/internal/io/FileSystem;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 249
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_35

    .line 252
    if-lez p3, :cond_2d

    .line 257
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x1

    .line 258
    const-string v8, "OkHttp DiskLruCache"

    invoke-static {v8, v1}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object v8, v0

    .line 260
    .local v8, "executor":Ljava/util/concurrent/Executor;
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/DiskLruCache;-><init>(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v0

    .line 253
    .end local v8    # "executor":Ljava/util/concurrent/Executor;
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized blacklist edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 452
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 454
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 455
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 457
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    if-eqz v0, :cond_23

    .line 458
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1600(Lcom/android/okhttp/internal/DiskLruCache$Entry;)J

    move-result-wide v3
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_68

    cmp-long v1, v3, p2

    if-eqz v1, :cond_25

    .line 459
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_23
    monitor-exit p0

    return-object v2

    .line 461
    .restart local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_25
    if-eqz v0, :cond_2f

    :try_start_27
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_68

    if-eqz v1, :cond_2f

    .line 462
    monitor-exit p0

    return-object v2

    .line 466
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string v3, "DIRTY"

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 467
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 469
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_4d
    .catchall {:try_start_2f .. :try_end_4d} :catchall_68

    if-eqz v1, :cond_51

    .line 470
    monitor-exit p0

    return-object v2

    .line 473
    .restart local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_51
    if-nez v0, :cond_5e

    .line 474
    :try_start_53
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    move-object v0, v1

    .line 475
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_5e
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    .line 478
    .local v1, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_end_66
    .catchall {:try_start_53 .. :try_end_66} :catchall_68

    .line 479
    monitor-exit p0

    return-object v1

    .line 451
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v1    # "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_68
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private blacklist journalRebuildRequired()Z
    .registers 4

    .line 581
    const/16 v0, 0x7d0

    .line 582
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_12

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 583
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 582
    :goto_13
    return v1
.end method

.method private blacklist newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    .line 304
    .local v0, "fileSink":Lcom/android/okhttp/okio/Sink;
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Lcom/android/okhttp/internal/DiskLruCache$2;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/okio/Sink;)V

    .line 310
    .local v1, "faultHidingSink":Lcom/android/okhttp/okio/Sink;
    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    return-object v2
.end method

.method private blacklist processJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 358
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/internal/DiskLruCache$Entry;>;"
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 359
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 360
    .local v1, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_37

    .line 361
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_24
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_36

    .line 362
    iget-wide v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 361
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .end local v2    # "t":I
    :cond_36
    goto :goto_5c

    .line 365
    :cond_37
    const/4 v2, 0x0

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 366
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_3c
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_59

    .line 367
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 368
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 370
    .end local v2    # "t":I
    :cond_59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 372
    .end local v1    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :goto_5c
    goto :goto_11

    .line 373
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/okhttp/internal/DiskLruCache$Entry;>;"
    :cond_5d
    return-void
.end method

.method private blacklist readJournal()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-string v0, ", "

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    invoke-static {v1}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v1

    .line 266
    .local v1, "source":Lcom/android/okhttp/okio/BufferedSource;
    :try_start_e
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "magic":Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "version":Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    const-string v7, "1"

    .line 272
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    iget v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    .line 273
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    iget v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    .line 274
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    const-string v7, ""

    .line 275
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_ac

    if-eqz v7, :cond_7e

    .line 280
    const/4 v0, 0x0

    .line 283
    .local v0, "lineCount":I
    :goto_53
    :try_start_53
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/okhttp/internal/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5d
    .catchall {:try_start_53 .. :try_end_5a} :catchall_ac

    .line 284
    add-int/lit8 v0, v0, 0x1

    .line 287
    goto :goto_53

    .line 285
    :catch_5d
    move-exception v7

    .line 286
    .local v7, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 289
    .end local v7    # "endOfJournal":Ljava/io/EOFException;
    :try_start_5f
    iget-object v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v0, v7

    iput v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 292
    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v7

    if-nez v7, :cond_73

    .line 293
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    goto :goto_79

    .line 295
    :cond_73
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_ac

    .line 298
    .end local v0    # "lineCount":I
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    :goto_79
    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    nop

    .line 300
    return-void

    .line 276
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_7e
    :try_start_7e
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "source":Lcom/android/okhttp/okio/BufferedSource;
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    throw v7
    :try_end_ac
    .catchall {:try_start_7e .. :try_end_ac} :catchall_ac

    .line 298
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "source":Lcom/android/okhttp/okio/BufferedSource;
    .restart local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :catchall_ac
    move-exception v0

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 299
    throw v0
.end method

.method private blacklist readJournalLine(Ljava/lang/String;)V
    .registers 12
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 315
    .local v1, "firstSpace":I
    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_ab

    .line 319
    add-int/lit8 v4, v1, 0x1

    .line 320
    .local v4, "keyBegin":I
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 322
    .local v0, "secondSpace":I
    if-ne v0, v3, :cond_2b

    .line 323
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 325
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    return-void

    .line 329
    .end local v5    # "key":Ljava/lang/String;
    :cond_2b
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 332
    .restart local v5    # "key":Ljava/lang/String;
    :cond_2f
    iget-object v6, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 333
    .local v6, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    const/4 v7, 0x0

    if-nez v6, :cond_45

    .line 334
    new-instance v8, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-direct {v8, p0, v5, v7}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    move-object v6, v8

    .line 335
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_45
    if-eq v0, v3, :cond_6c

    const-string v8, "CLEAN"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_6c

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 339
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x1

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v6, v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$802(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 341
    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v6, v7}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 342
    # invokes: Lcom/android/okhttp/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v6, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1000(Lcom/android/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 343
    .end local v2    # "parts":[Ljava/lang/String;
    goto :goto_95

    :cond_6c
    if-ne v0, v3, :cond_85

    const-string v8, "DIRTY"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_85

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 344
    new-instance v2, Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {v2, p0, v6, v7}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$1;)V

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v6, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    goto :goto_95

    .line 345
    :cond_85
    if-ne v0, v3, :cond_96

    const-string v3, "READ"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_96

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 350
    :goto_95
    return-void

    .line 348
    :cond_96
    new-instance v3, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 316
    .end local v0    # "secondSpace":I
    .end local v4    # "keyBegin":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_ab
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized blacklist rebuildJournal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 380
    :try_start_1
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v0, :cond_8

    .line 381
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 384
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_8
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    move-result-object v0

    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_bf

    .line 386
    .local v0, "writer":Lcom/android/okhttp/okio/BufferedSink;
    :try_start_14
    const-string v1, "libcore.io.DiskLruCache"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 387
    const-string v1, "1"

    invoke-interface {v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 388
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 389
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 390
    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 392
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 393
    .local v3, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    const/16 v5, 0x20

    if-eqz v4, :cond_71

    .line 394
    const-string v4, "DIRTY"

    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 395
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 396
    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    goto :goto_87

    .line 398
    :cond_71
    const-string v4, "CLEAN"

    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 399
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 400
    invoke-virtual {v3, v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 401
    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_87
    .catchall {:try_start_14 .. :try_end_87} :catchall_ba

    .line 403
    .end local v3    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :goto_87
    goto :goto_49

    .line 405
    :cond_88
    :try_start_88
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 406
    nop

    .line 408
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 409
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 411
    :cond_9f
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 412
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 414
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_b8
    .catchall {:try_start_88 .. :try_end_b8} :catchall_bf

    .line 416
    monitor-exit p0

    return-void

    .line 405
    :catchall_ba
    move-exception v1

    :try_start_bb
    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 406
    throw v1
    :try_end_bf
    .catchall {:try_start_bb .. :try_end_bf} :catchall_bf

    .line 379
    .end local v0    # "writer":Lcom/android/okhttp/okio/BufferedSink;
    :catchall_bf
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private blacklist removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .registers 7
    .param p1, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 604
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 605
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->detach()V

    .line 608
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_33

    .line 609
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 610
    iget-wide v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v3, v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 611
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 608
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 614
    .end local v0    # "i":I
    :cond_33
    iget v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 615
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 616
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 619
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 622
    :cond_6a
    return v1
.end method

.method private blacklist trimToSize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 664
    :goto_0
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    .line 665
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 666
    .local v0, "toEvict":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    .line 667
    .end local v0    # "toEvict":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    goto :goto_0

    .line 668
    :cond_1c
    return-void
.end method

.method private blacklist validateKey(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 693
    sget-object v0, Lcom/android/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 694
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 698
    return-void

    .line 695
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 647
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    if-eqz v0, :cond_b

    goto :goto_44

    .line 652
    :cond_b
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_35

    aget-object v4, v0, v3

    .line 653
    .local v4, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 654
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V

    .line 652
    .end local v4    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 657
    :cond_35
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    .line 658
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 659
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    .line 660
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_48

    .line 661
    monitor-exit p0

    return-void

    .line 648
    :cond_44
    :goto_44
    :try_start_44
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_48

    .line 649
    monitor-exit p0

    return-void

    .line 646
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist delete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 676
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    .line 677
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    .line 678
    return-void
.end method

.method public blacklist edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized blacklist evictAll()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 685
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 687
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_25

    aget-object v3, v0, v2

    .line 688
    .local v3, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-direct {p0, v3}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_27

    .line 687
    nop

    .end local v3    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 690
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_25
    monitor-exit p0

    return-void

    .line 684
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 638
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 640
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 641
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    .line 642
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    .line 643
    monitor-exit p0

    return-void

    .line 637
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 424
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 426
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 427
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 429
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-eqz v0, :cond_50

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_50

    .line 431
    :cond_1c
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_52

    .line 432
    .local v2, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v2, :cond_24

    monitor-exit p0

    return-object v1

    .line 434
    :cond_24
    :try_start_24
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 435
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string v3, "READ"

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 436
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 437
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_52

    .line 440
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_4e
    monitor-exit p0

    return-object v2

    .line 429
    .end local v2    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :cond_50
    :goto_50
    monitor-exit p0

    return-object v1

    .line 423
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public blacklist getDirectory()Ljava/io/File;
    .registers 2

    .line 484
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized blacklist getMaxSize()J
    .registers 3

    monitor-enter p0

    .line 492
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 492
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist initialize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 203
    nop

    .line 205
    :try_start_2
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_7b

    if-eqz v0, :cond_8

    .line 206
    monitor-exit p0

    return-void

    .line 210
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 212
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 213
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_2d

    .line 215
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_24
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 220
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_7b

    const/4 v1, 0x1

    if-eqz v0, :cond_74

    .line 222
    :try_start_38
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->readJournal()V

    .line 223
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->processJournal()V

    .line 224
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_42
    .catchall {:try_start_38 .. :try_end_40} :catchall_7b

    .line 225
    monitor-exit p0

    return-void

    .line 226
    :catch_42
    move-exception v0

    .line 227
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_43
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v2, v3}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    .line 230
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    .line 234
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_74
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    .line 236
    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_79
    .catchall {:try_start_43 .. :try_end_79} :catchall_7b

    .line 237
    monitor-exit p0

    return-void

    .line 202
    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist isClosed()Z
    .registers 2

    monitor-enter p0

    .line 627
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 627
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist remove(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 594
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 596
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 597
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    .line 599
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    if-nez v0, :cond_17

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 600
    :cond_17
    :try_start_17
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return v1

    .line 593
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setMaxSize(J)V
    .registers 5
    .param p1, "maxSize"    # J

    monitor-enter p0

    .line 500
    :try_start_1
    iput-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    .line 501
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    if-eqz v0, :cond_e

    .line 502
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 504
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :cond_e
    monitor-exit p0

    return-void

    .line 499
    .end local p1    # "maxSize":J
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 512
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 513
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-wide v0

    .line 511
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist snapshots()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 716
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 717
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$3;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/DiskLruCache$3;-><init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 715
    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
