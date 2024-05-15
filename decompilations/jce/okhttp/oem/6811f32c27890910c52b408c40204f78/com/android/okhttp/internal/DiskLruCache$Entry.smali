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
.field private final cleanFiles:[Ljava/io/File;

.field private currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

.field private final dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[J
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/okhttp/internal/DiskLruCache$Entry;)J
    .registers 3
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    iget-wide v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p1, "-value"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .prologue
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/okhttp/internal/DiskLruCache$Entry;Z)Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/okhttp/internal/DiskLruCache$Entry;J)J
    .registers 4
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/okhttp/internal/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;)V
    .registers 10
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 974
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    .line 975
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 976
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 979
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 980
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 981
    .local v2, "truncateTo":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v3

    if-ge v1, v3, :cond_66

    .line 982
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 983
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get2(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 984
    const-string/jumbo v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 985
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get2(Lcom/android/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 986
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 981
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 988
    :cond_66
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "-this2"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1013
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .registers 8
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    array-length v2, p1

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v3

    if-eq v2, v3, :cond_e

    .line 993
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 997
    :cond_e
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    :try_start_f
    array-length v2, p1

    if-ge v1, v2, :cond_25

    .line 998
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1c} :catch_1f

    .line 997
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1000
    :catch_1f
    move-exception v0

    .line 1001
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1003
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    return-void
.end method


# virtual methods
.method snapshot()Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 1022
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1024
    :cond_f
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v1

    new-array v6, v1, [Lcom/android/okhttp/okio/Source;

    .line 1025
    .local v6, "sources":[Lcom/android/okhttp/okio/Source;
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 1027
    .local v7, "lengths":[J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ge v9, v1, :cond_3b

    .line 1028
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v9

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v1

    aput-object v1, v6, v9

    .line 1027
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 1030
    :cond_3b
    new-instance v1, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->sequenceNumber:J

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[JLcom/android/okhttp/internal/DiskLruCache$Snapshot;)V
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_47} :catch_48

    return-object v1

    .line 1031
    :catch_48
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v9, 0x0

    :goto_4a
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ge v9, v1, :cond_5e

    .line 1034
    aget-object v1, v6, v9

    if-eqz v1, :cond_5e

    .line 1035
    aget-object v1, v6, v9

    invoke-static {v1}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1033
    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 1040
    :cond_5e
    return-object v10
.end method

.method writeLengths(Lcom/android/okhttp/okio/BufferedSink;)V
    .registers 8
    .param p1, "writer"    # Lcom/android/okhttp/okio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Entry;->lengths:[J

    const/4 v2, 0x0

    array-length v4, v3

    :goto_4
    if-ge v2, v4, :cond_14

    aget-wide v0, v3, v2

    .line 1008
    .local v0, "length":J
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lcom/android/okhttp/okio/BufferedSink;->writeByte(I)Lcom/android/okhttp/okio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Lcom/android/okhttp/okio/BufferedSink;->writeDecimalLong(J)Lcom/android/okhttp/okio/BufferedSink;

    .line 1007
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1010
    .end local v0    # "length":J
    :cond_14
    return-void
.end method
