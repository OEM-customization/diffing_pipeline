.class public final Lcom/android/okhttp/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation


# instance fields
.field private done:Z

.field private final entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

.field final synthetic this$0:Lcom/android/okhttp/internal/DiskLruCache;

.field private final written:[Z


# direct methods
.method static synthetic -get0(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z
    .registers 2
    .param p0, "-this"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .prologue
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method private constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 833
    invoke-static {p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    .line 834
    return-void

    .line 833
    :cond_11
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p3, "-this2"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 931
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 932
    :try_start_3
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_10

    .line 933
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    .line 931
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 935
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 936
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap2(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 938
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_d

    monitor-exit v1

    .line 940
    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 5

    .prologue
    .line 943
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v2

    .line 944
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_17

    move-result-object v1

    if-ne v1, p0, :cond_15

    .line 946
    :try_start_f
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v3, 0x0

    invoke-static {v1, p0, v3}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap2(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_1a
    .catchall {:try_start_f .. :try_end_15} :catchall_17

    :cond_15
    :goto_15
    monitor-exit v2

    .line 951
    return-void

    .line 943
    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1

    .line 947
    :catch_1a
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_15
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v1

    .line 916
    :try_start_3
    iget-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-eqz v0, :cond_10

    .line 917
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    .line 915
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 919
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_1e

    .line 920
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v2, 0x1

    invoke-static {v0, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->-wrap2(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 922
    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_d

    monitor-exit v1

    .line 924
    return-void
.end method

.method detach()V
    .registers 5

    .prologue
    .line 843
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v2

    if-ne v2, p0, :cond_2b

    .line 844
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->-get6(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 846
    :try_start_11
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->-get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_2c

    .line 844
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 851
    :cond_25
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-set0(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 853
    .end local v1    # "i":I
    :cond_2b
    return-void

    .line 847
    .restart local v1    # "i":I
    :catch_2c
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_22
.end method

.method public newSink(I)Lcom/android/okhttp/okio/Sink;
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    iget-object v4, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v4

    .line 884
    :try_start_3
    iget-boolean v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-eqz v3, :cond_10

    .line 885
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_d

    .line 883
    :catchall_d
    move-exception v3

    monitor-exit v4

    throw v3

    .line 887
    :cond_10
    :try_start_10
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v3

    if-eq v3, p0, :cond_1e

    .line 888
    invoke-static {}, Lcom/android/okhttp/internal/DiskLruCache;->-get0()Lcom/android/okhttp/okio/Sink;
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_d

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 890
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 891
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, p1

    .line 893
    :cond_2b
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get2(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v0, v3, p1
    :try_end_33
    .catchall {:try_start_1e .. :try_end_33} :catchall_d

    .line 896
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_33
    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache;->-get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_3c} :catch_44
    .catchall {:try_start_33 .. :try_end_3c} :catchall_d

    move-result-object v2

    .line 900
    .local v2, "sink":Lcom/android/okhttp/okio/Sink;
    :try_start_3d
    new-instance v3, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;

    invoke-direct {v3, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Lcom/android/okhttp/okio/Sink;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_d

    monitor-exit v4

    return-object v3

    .line 897
    .end local v2    # "sink":Lcom/android/okhttp/okio/Sink;
    :catch_44
    move-exception v1

    .line 898
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_45
    invoke-static {}, Lcom/android/okhttp/internal/DiskLruCache;->-get0()Lcom/android/okhttp/okio/Sink;
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_d

    move-result-object v3

    monitor-exit v4

    return-object v3
.end method

.method public newSource(I)Lcom/android/okhttp/okio/Source;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 860
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v2

    .line 861
    :try_start_4
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-eqz v1, :cond_11

    .line 862
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_e

    .line 860
    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1

    .line 864
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get5(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get1(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_e

    move-result-object v1

    if-eq v1, p0, :cond_23

    :cond_21
    monitor-exit v2

    .line 865
    return-object v4

    .line 868
    :cond_23
    :try_start_23
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->-get3(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v1

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->-get0(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-interface {v1, v3}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_34} :catch_37
    .catchall {:try_start_23 .. :try_end_34} :catchall_e

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 869
    :catch_37
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v2

    .line 870
    return-object v4
.end method
