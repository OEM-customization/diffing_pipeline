.class public final Lcom/android/okhttp/internal/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/DiskLruCache$1;,
        Lcom/android/okhttp/internal/DiskLruCache$2;,
        Lcom/android/okhttp/internal/DiskLruCache$Editor;,
        Lcom/android/okhttp/internal/DiskLruCache$Entry;,
        Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_SINK:Lcom/android/okhttp/okio/Sink;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private closed:Z

.field private final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

.field private hasJournalErrors:Z

.field private initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Lcom/android/okhttp/okio/BufferedSink;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/okhttp/internal/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static synthetic -get0()Lcom/android/okhttp/okio/Sink;
    .registers 1

    sget-object v0, Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/internal/DiskLruCache;)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    iget v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/DiskLruCache;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/internal/DiskLruCache;I)I
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/DiskLruCache;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 6
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "success"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/okhttp/internal/DiskLruCache;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache;

    .prologue
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lcom/android/okhttp/internal/DiskLruCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/okhttp/internal/DiskLruCache;->-assertionsDisabled:Z

    .line 95
    const-string/jumbo v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 809
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$2;

    invoke-direct {v0}, Lcom/android/okhttp/internal/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;

    .line 88
    return-void
.end method

.method constructor <init>(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .registers 15
    .param p1, "fileSystem"    # Lcom/android/okhttp/internal/io/FileSystem;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    const-wide/16 v4, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 151
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 164
    iput-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    .line 168
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/DiskLruCache$1;-><init>(Lcom/android/okhttp/internal/DiskLruCache;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 189
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    .line 190
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    .line 191
    iput p3, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    .line 192
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    .line 193
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 194
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 195
    iput p4, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    .line 196
    iput-wide p5, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    .line 197
    iput-object p7, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    .line 198
    return-void
.end method

.method private declared-synchronized checkNotClosed()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 629
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 630
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    monitor-exit p0

    .line 632
    return-void
.end method

.method private declared-synchronized completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    .registers 15
    .param p1, "editor"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 515
    :try_start_1
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;

    move-result-object v2

    .line 516
    .local v2, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_14

    .line 517
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .end local v2    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :catchall_11
    move-exception v8

    monitor-exit p0

    throw v8

    .line 521
    .restart local v2    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_14
    if-eqz p2, :cond_5e

    :try_start_16
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5e

    .line 522
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5e

    .line 523
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z

    move-result-object v8

    aget-boolean v8, v8, v3

    if-nez v8, :cond_48

    .line 524
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V

    .line 525
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Newly created entry didn\'t create value for index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 527
    :cond_48
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v9

    aget-object v9, v9, v3

    invoke-interface {v8, v9}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 528
    invoke-virtual {p1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_59
    .catchall {:try_start_16 .. :try_end_59} :catchall_11

    monitor-exit p0

    .line 529
    return-void

    .line 522
    :cond_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 534
    .end local v3    # "i":I
    :cond_5e
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5f
    :try_start_5f
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_9f

    .line 535
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v8

    aget-object v1, v8, v3

    .line 536
    .local v1, "dirty":Ljava/io/File;
    if-eqz p2, :cond_99

    .line 537
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v8, v1}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_96

    .line 538
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v8

    aget-object v0, v8, v3

    .line 539
    .local v0, "clean":Ljava/io/File;
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v8, v1, v0}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 540
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 541
    .local v6, "oldLength":J
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v8, v0}, Lcom/android/okhttp/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v4

    .line 542
    .local v4, "newLength":J
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 543
    iget-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 534
    .end local v0    # "clean":Ljava/io/File;
    .end local v4    # "newLength":J
    .end local v6    # "oldLength":J
    :cond_96
    :goto_96
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 546
    :cond_99
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-interface {v8, v1}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_96

    .line 550
    .end local v1    # "dirty":Ljava/io/File;
    :cond_9f
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 551
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 552
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_ff

    .line 553
    const/4 v8, 0x1

    invoke-static {v2, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set1(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 554
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string/jumbo v9, "CLEAN"

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v8

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 555
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 556
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-virtual {v2, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 557
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 558
    if-eqz p2, :cond_e3

    .line 559
    iget-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/android/okhttp/internal/DiskLruCache;->nextSequenceNumber:J

    invoke-static {v2, v8, v9}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set2(Lcom/android/okhttp/internal/DiskLruCache$Entry;J)J

    .line 567
    :cond_e3
    :goto_e3
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v8}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 569
    iget-wide v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_f6

    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 570
    :cond_f6
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_fd
    .catchall {:try_start_5f .. :try_end_fd} :catchall_11

    :cond_fd
    monitor-exit p0

    .line 572
    return-void

    .line 562
    :cond_ff
    :try_start_ff
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string/jumbo v9, "REMOVE"

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v8

    const/16 v9, 0x20

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 564
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 565
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const/16 v9, 0xa

    invoke-interface {v8, v9}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_126
    .catchall {:try_start_ff .. :try_end_126} :catchall_11

    goto :goto_e3
.end method

.method public static create(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJ)Lcom/android/okhttp/internal/DiskLruCache;
    .registers 18
    .param p0, "fileSystem"    # Lcom/android/okhttp/internal/io/FileSystem;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .prologue
    .line 247
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-gtz v0, :cond_f

    .line 248
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxSize <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_f
    if-gtz p3, :cond_1a

    .line 251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "valueCount <= 0"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1a
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 256
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp DiskLruCache"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    .line 255
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 258
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Lcom/android/okhttp/internal/DiskLruCache;

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move-object v10, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/okhttp/internal/DiskLruCache;-><init>(Lcom/android/okhttp/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v3
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    monitor-enter p0

    .line 450
    :try_start_2
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 452
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 453
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 455
    .local v1, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_25

    if-eqz v1, :cond_23

    .line 456
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get6(Lcom/android/okhttp/internal/DiskLruCache$Entry;)J
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_6a

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_25

    :cond_23
    monitor-exit p0

    .line 457
    return-object v4

    .line 459
    :cond_25
    if-eqz v1, :cond_2f

    :try_start_27
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_6a

    move-result-object v2

    if-eqz v2, :cond_2f

    monitor-exit p0

    .line 460
    return-object v4

    .line 464
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string/jumbo v3, "DIRTY"

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 465
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->flush()V

    .line 467
    iget-boolean v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_4e
    .catchall {:try_start_2f .. :try_end_4e} :catchall_6a

    if-eqz v2, :cond_52

    monitor-exit p0

    .line 468
    return-object v4

    .line 471
    :cond_52
    if-nez v1, :cond_5f

    .line 472
    :try_start_54
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .end local v1    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    .line 473
    .restart local v1    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_5f
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    .line 476
    .local v0, "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_end_68
    .catchall {:try_start_54 .. :try_end_68} :catchall_6a

    monitor-exit p0

    .line 477
    return-object v0

    .end local v0    # "editor":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .end local v1    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :catchall_6a
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private journalRebuildRequired()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 579
    const/16 v0, 0x7d0

    .line 580
    .local v0, "redundantOpCompactThreshold":I
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_14

    .line 581
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-lt v2, v3, :cond_14

    const/4 v1, 0x1

    .line 580
    :cond_14
    return v1
.end method

.method private newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 301
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    .line 302
    .local v1, "fileSink":Lcom/android/okhttp/okio/Sink;
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$3;

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/internal/DiskLruCache$3;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/okio/Sink;)V

    .line 308
    .local v0, "faultHidingSink":Lcom/android/okhttp/okio/Sink;
    invoke-static {v0}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    return-object v2
.end method

.method private processJournal()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 355
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 356
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/internal/DiskLruCache$Entry;>;"
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 357
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 358
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_37

    .line 359
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_25
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_12

    .line 360
    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v6, v3, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 363
    .end local v2    # "t":I
    :cond_37
    invoke-static {v0, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 364
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_3b
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_58

    .line 365
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 366
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 368
    :cond_58
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_12

    .line 371
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v2    # "t":I
    :cond_5c
    return-void
.end method

.method private readJournal()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v9, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v8, v9}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v8

    invoke-static {v8}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Source;)Lcom/android/okhttp/okio/BufferedSource;

    move-result-object v5

    .line 264
    .local v5, "source":Lcom/android/okhttp/okio/BufferedSource;
    :try_start_c
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, "magic":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "version":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "appVersionString":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, "valueCountString":Ljava/lang/String;
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "blank":Ljava/lang/String;
    const-string/jumbo v8, "libcore.io.DiskLruCache"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 270
    const-string/jumbo v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 269
    if-nez v8, :cond_5b

    .line 271
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 269
    if-nez v8, :cond_5b

    .line 272
    iget v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 269
    if-nez v8, :cond_5b

    .line 273
    const-string/jumbo v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 269
    if-eqz v8, :cond_a2

    .line 274
    :cond_5b
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unexpected journal header: ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 275
    const-string/jumbo v10, ", "

    .line 274
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 275
    const-string/jumbo v10, "]"

    .line 274
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_9d
    .catchall {:try_start_c .. :try_end_9d} :catchall_9d

    .line 295
    .end local v0    # "appVersionString":Ljava/lang/String;
    .end local v1    # "blank":Ljava/lang/String;
    .end local v4    # "magic":Ljava/lang/String;
    .end local v6    # "valueCountString":Ljava/lang/String;
    .end local v7    # "version":Ljava/lang/String;
    :catchall_9d
    move-exception v8

    .line 296
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 295
    throw v8

    .line 278
    .restart local v0    # "appVersionString":Ljava/lang/String;
    .restart local v1    # "blank":Ljava/lang/String;
    .restart local v4    # "magic":Ljava/lang/String;
    .restart local v6    # "valueCountString":Ljava/lang/String;
    .restart local v7    # "version":Ljava/lang/String;
    :cond_a2
    const/4 v3, 0x0

    .line 281
    .local v3, "lineCount":I
    :goto_a3
    :try_start_a3
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/okhttp/internal/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/io/EOFException; {:try_start_a3 .. :try_end_aa} :catch_ad
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_9d

    .line 282
    add-int/lit8 v3, v3, 0x1

    goto :goto_a3

    .line 283
    :catch_ad
    move-exception v2

    .line 287
    .local v2, "endOfJournal":Ljava/io/EOFException;
    :try_start_ae
    iget-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    sub-int v8, v3, v8

    iput v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 290
    invoke-interface {v5}, Lcom/android/okhttp/okio/BufferedSource;->exhausted()Z

    move-result v8

    if-nez v8, :cond_c5

    .line 291
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V
    :try_end_c1
    .catchall {:try_start_ae .. :try_end_c1} :catchall_9d

    .line 296
    :goto_c1
    invoke-static {v5}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 298
    return-void

    .line 293
    :cond_c5
    :try_start_c5
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v8

    iput-object v8, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;
    :try_end_cb
    .catchall {:try_start_c5 .. :try_end_cb} :catchall_9d

    goto :goto_c1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 11
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x20

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 312
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 313
    .local v1, "firstSpace":I
    if-ne v1, v7, :cond_24

    .line 314
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    :cond_24
    add-int/lit8 v3, v1, 0x1

    .line 318
    .local v3, "keyBegin":I
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 320
    .local v5, "secondSpace":I
    if-ne v5, v7, :cond_48

    .line 321
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_4c

    const-string/jumbo v6, "REMOVE"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 323
    iget-object v6, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    return-void

    .line 327
    .end local v2    # "key":Ljava/lang/String;
    :cond_48
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 330
    .restart local v2    # "key":Ljava/lang/String;
    :cond_4c
    iget-object v6, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 331
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    if-nez v0, :cond_60

    .line 332
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-direct {v0, p0, v2, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    .line 333
    .restart local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    iget-object v6, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_60
    if-eq v5, v7, :cond_8c

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_8c

    const-string/jumbo v6, "CLEAN"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 337
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "parts":[Ljava/lang/String;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set1(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z

    .line 339
    invoke-static {v0, v8}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 340
    invoke-static {v0, v4}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-wrap0(Lcom/android/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 348
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_8b
    :goto_8b
    return-void

    .line 341
    :cond_8c
    if-ne v5, v7, :cond_a9

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_a9

    const-string/jumbo v6, "DIRTY"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 342
    new-instance v6, Lcom/android/okhttp/internal/DiskLruCache$Editor;

    invoke-direct {v6, p0, v0, v8}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V

    invoke-static {v0, v6}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    goto :goto_8b

    .line 343
    :cond_a9
    if-ne v5, v7, :cond_bd

    const-string/jumbo v6, "READ"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_bd

    const-string/jumbo v6, "READ"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8b

    .line 346
    :cond_bd
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unexpected journal line: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 378
    :try_start_1
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    if-eqz v3, :cond_a

    .line 379
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v3}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 382
    :cond_a
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    move-result-object v3

    invoke-static {v3}, Lcom/android/okhttp/okio/Okio;->buffer(Lcom/android/okhttp/okio/Sink;)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_85

    move-result-object v2

    .line 384
    .local v2, "writer":Lcom/android/okhttp/okio/BufferedSink;
    :try_start_16
    const-string/jumbo v3, "libcore.io.DiskLruCache"

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 385
    const-string/jumbo v3, "1"

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 386
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->appVersion:I

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 387
    iget v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 388
    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 390
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 391
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 392
    const-string/jumbo v3, "DIRTY"

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 393
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 394
    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_7f
    .catchall {:try_start_16 .. :try_end_7f} :catchall_80

    goto :goto_55

    .line 402
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    :catchall_80
    move-exception v3

    .line 403
    :try_start_81
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 402
    throw v3
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_85

    .end local v2    # "writer":Lcom/android/okhttp/okio/BufferedSink;
    :catchall_85
    move-exception v3

    monitor-exit p0

    throw v3

    .line 396
    .restart local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v2    # "writer":Lcom/android/okhttp/okio/BufferedSink;
    :cond_88
    :try_start_88
    const-string/jumbo v3, "CLEAN"

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 397
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    .line 398
    invoke-virtual {v0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V

    .line 399
    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;
    :try_end_a3
    .catchall {:try_start_88 .. :try_end_a3} :catchall_80

    goto :goto_55

    .line 403
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_a4
    :try_start_a4
    invoke-interface {v2}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 406
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 407
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v5, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 409
    :cond_ba
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v5, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v3, v4, v5}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 410
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v3, v4}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 412
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->newJournalWriter()Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v3

    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    .line 413
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->hasJournalErrors:Z
    :try_end_d3
    .catchall {:try_start_a4 .. :try_end_d3} :catchall_85

    monitor-exit p0

    .line 414
    return-void
.end method

.method private removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .registers 8
    .param p1, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 603
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->detach()V

    .line 606
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_33

    .line 607
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 608
    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    .line 609
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 606
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 612
    :cond_33
    iget v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 613
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string/jumbo v2, "REMOVE"

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 614
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 617
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 620
    :cond_6b
    const/4 v1, 0x1

    return v1
.end method

.method private trimToSize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 662
    :goto_0
    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J

    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1c

    .line 663
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 664
    .local v0, "toEvict":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    goto :goto_0

    .line 666
    .end local v0    # "toEvict":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_1c
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 691
    sget-object v1, Lcom/android/okhttp/internal/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 692
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 693
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 696
    :cond_2d
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 645
    :try_start_1
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    if-eqz v1, :cond_e

    .line 646
    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_48

    monitor-exit p0

    .line 647
    return-void

    .line 650
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_24
    if-ge v2, v3, :cond_38

    aget-object v0, v1, v2

    .line 651
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    if-eqz v4, :cond_35

    .line 652
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/okhttp/internal/DiskLruCache$Editor;->abort()V

    .line 650
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 655
    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_38
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    .line 656
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v1}, Lcom/android/okhttp/okio/BufferedSink;->close()V

    .line 657
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    .line 658
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_48

    monitor-exit p0

    .line 659
    return-void

    :catchall_48
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public delete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->close()V

    .line 675
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    .line 676
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/okhttp/internal/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized evictAll()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 683
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 685
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/okhttp/internal/DiskLruCache$Entry;

    const/4 v2, 0x0

    array-length v3, v1

    :goto_1a
    if-ge v2, v3, :cond_24

    aget-object v0, v1, v2

    .line 686
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_26

    .line 685
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :cond_24
    monitor-exit p0

    .line 688
    return-void

    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 636
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 638
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 639
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->trimToSize()V

    .line 640
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    invoke-interface {v0}, Lcom/android/okhttp/okio/BufferedSink;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    monitor-exit p0

    .line 641
    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 422
    :try_start_2
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 424
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 425
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 427
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_54

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1f

    :cond_1d
    monitor-exit p0

    return-object v3

    .line 429
    :cond_1f
    :try_start_1f
    invoke-virtual {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_54

    move-result-object v1

    .line 430
    .local v1, "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    if-nez v1, :cond_27

    monitor-exit p0

    return-object v3

    .line 432
    :cond_27
    :try_start_27
    iget v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->redundantOpCount:I

    .line 433
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalWriter:Lcom/android/okhttp/okio/BufferedSink;

    const-string/jumbo v3, "READ"

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    const/16 v3, 0x20

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/okhttp/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    .line 434
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->journalRebuildRequired()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 435
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_54

    :cond_52
    monitor-exit p0

    .line 438
    return-object v1

    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .end local v1    # "snapshot":Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    :catchall_54
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    .prologue
    monitor-enter p0

    .line 490
    :try_start_1
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 201
    :try_start_1
    sget-boolean v1, Lcom/android/okhttp/internal/DiskLruCache;->-assertionsDisabled:Z

    if-nez v1, :cond_14

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1

    .line 203
    :cond_14
    :try_start_14
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_11

    if-eqz v1, :cond_1a

    monitor-exit p0

    .line 204
    return-void

    .line 208
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 210
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 211
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 218
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->exists(Ljava/io/File;)Z
    :try_end_3c
    .catchall {:try_start_1a .. :try_end_3c} :catchall_11

    move-result v1

    if-eqz v1, :cond_8e

    .line 220
    :try_start_3f
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->readJournal()V

    .line 221
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->processJournal()V

    .line 222
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_48} :catch_54
    .catchall {:try_start_3f .. :try_end_48} :catchall_11

    monitor-exit p0

    .line 223
    return-void

    .line 213
    :cond_4a
    :try_start_4a
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    goto :goto_35

    .line 224
    :catch_54
    move-exception v0

    .line 225
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    invoke-static {}, Lcom/android/okhttp/internal/Platform;->get()Lcom/android/okhttp/internal/Platform;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 226
    const-string/jumbo v3, ", removing"

    .line 225
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/okhttp/internal/Platform;->logW(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->delete()V

    .line 228
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z

    .line 232
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_8e
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->rebuildJournal()V

    .line 234
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z
    :try_end_94
    .catchall {:try_start_4a .. :try_end_94} :catchall_11

    monitor-exit p0

    .line 235
    return-void
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 625
    :try_start_1
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 592
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 594
    invoke-direct {p0}, Lcom/android/okhttp/internal/DiskLruCache;->checkNotClosed()V

    .line 595
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1d

    .line 597
    .local v0, "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    if-nez v0, :cond_17

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 598
    :cond_17
    :try_start_17
    invoke-direct {p0, v0}, Lcom/android/okhttp/internal/DiskLruCache;->removeEntry(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1d

    move-result v1

    monitor-exit p0

    return v1

    .end local v0    # "entry":Lcom/android/okhttp/internal/DiskLruCache$Entry;
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 6
    .param p1, "maxSize"    # J

    .prologue
    monitor-enter p0

    .line 498
    :try_start_1
    iput-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache;->maxSize:J

    .line 499
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->initialized:Z

    if-eqz v0, :cond_e

    .line 500
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    .line 502
    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 510
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 511
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache;->size:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-wide v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/okhttp/internal/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 714
    :try_start_1
    invoke-virtual {p0}, Lcom/android/okhttp/internal/DiskLruCache;->initialize()V

    .line 715
    new-instance v0, Lcom/android/okhttp/internal/DiskLruCache$4;

    invoke-direct {v0, p0}, Lcom/android/okhttp/internal/DiskLruCache$4;-><init>(Lcom/android/okhttp/internal/DiskLruCache;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
