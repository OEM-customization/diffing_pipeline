.class final Lcom/android/okhttp/internal/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private final blacklist cleanFiles:[Ljava/io/File;

.field private blacklist currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field private final blacklist dirtyFiles:[Ljava/io/File;

.field private final blacklist key:Ljava/lang/String;

.field private final blacklist lengths:[J

.field private blacklist readable:Z

.field private blacklist sequenceNumber:J

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;)V
    .registers 10
    .param p2, "key"    # Ljava/lang/String;

    .line 975
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 978
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    .line 979
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 980
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 984
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 985
    .local v1, "truncateTo":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 986
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 987
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2600(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 988
    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2600(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 990
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 985
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 992
    .end local v2    # "i":I
    :cond_65
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/android/okhttp/internal/DiskLruCache$1;

    .line 958
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/android/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 958
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$1200(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 958
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic blacklist access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 958
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic blacklist access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 958
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic blacklist access$1500(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 958
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$1600(Lcom/android/okhttp/internal/DiskLruCache$Entry;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 958
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic blacklist access$1602(Lcom/android/okhttp/internal/DiskLruCache$Entry;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .line 958
    iput-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic blacklist access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 958
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic blacklist access$802(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .line 958
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic blacklist access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 958
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic blacklist access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p1, "x1"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 958
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    return-object p1
.end method

.method private blacklist invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist setLengths([Ljava/lang/String;)V
    .registers 6
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 996
    array-length v0, p1

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_22

    .line 1001
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 1002
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1c

    .line 1001
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1006
    .end local v0    # "i":I
    :cond_1a
    nop

    .line 1007
    return-void

    .line 1004
    :catch_1c
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 997
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_22
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method blacklist snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 12

    .line 1026
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1028
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Lcom/android/okhttp/okio/Source;

    .line 1029
    .local v0, "sources":[Lcom/android/okhttp/okio/Source;
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [J

    .line 1031
    .local v9, "lengths":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    :try_start_1a
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 1032
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1031
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1034
    .end local v1    # "i":I
    :cond_35
    new-instance v10, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    const/4 v8, 0x0

    move-object v1, v10

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[JLcom/android/okhttp/internal/DiskLruCache$1;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_44} :catch_45

    return-object v10

    .line 1035
    :catch_45
    move-exception v1

    .line 1037
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 1038
    aget-object v3, v0, v2

    if-eqz v3, :cond_5b

    .line 1039
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1037
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1044
    .end local v2    # "i":I
    :cond_5b
    const/4 v2, 0x0

    return-object v2

    .line 1026
    .end local v0    # "sources":[Lcom/android/okhttp/okio/Source;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "lengths":[J
    :cond_5d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method blacklist writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 8
    .param p1, "writer"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1011
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-wide v3, v0, v2

    .line 1012
    .local v3, "length":J
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 1011
    .end local v3    # "length":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1014
    :cond_14
    return-void
.end method
