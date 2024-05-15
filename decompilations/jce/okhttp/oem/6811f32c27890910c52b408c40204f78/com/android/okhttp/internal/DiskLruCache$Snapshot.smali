.class public final Lcom/android/okhttp/internal/DiskLruCache$Snapshot;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field private final sources:[Lcom/android/okhttp/okio/Source;

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/DiskLruCache$Snapshot;)Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[J)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lcom/android/okhttp/okio/Source;
    .param p6, "lengths"    # [J

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    .line 774
    iput-wide p3, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sequenceNumber:J

    .line 775
    iput-object p5, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    .line 776
    iput-object p6, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->lengths:[J

    .line 777
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[JLcom/android/okhttp/internal/DiskLruCache$Snapshot;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "sources"    # [Lcom/android/okhttp/okio/Source;
    .param p6, "lengths"    # [J
    .param p7, "-this5"    # Lcom/android/okhttp/internal/DiskLruCache$Snapshot;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J[Lcom/android/okhttp/okio/Source;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 803
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_e

    aget-object v0, v2, v1

    .line 804
    .local v0, "in":Lcom/android/okhttp/okio/Source;
    invoke-static {v0}, Lcom/android/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 803
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 806
    .end local v0    # "in":Lcom/android/okhttp/okio/Source;
    :cond_e
    return-void
.end method

.method public edit()Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap1(Lcom/android/okhttp/internal/DiskLruCache;Ljava/lang/String;J)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getLength(I)J
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getSource(I)Lcom/android/okhttp/okio/Source;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->sources:[Lcom/android/okhttp/okio/Source;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Snapshot;->key:Ljava/lang/String;

    return-object v0
.end method
