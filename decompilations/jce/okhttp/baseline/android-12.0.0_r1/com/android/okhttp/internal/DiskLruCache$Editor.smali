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
.field private blacklist done:Z

.field private final blacklist entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

.field final synthetic blacklist this$0:Lcom/android/okhttp/internal/DiskLruCache;

.field private final blacklist written:[Z


# direct methods
.method private constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "entry"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 835
    iput-object p1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    .line 837
    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    :cond_f
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    :goto_15
    iput-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    .line 838
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/okhttp/internal/DiskLruCache;
    .param p2, "x1"    # Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/android/okhttp/internal/DiskLruCache$1;

    .line 830
    invoke-direct {p0, p1, p2}, Lcom/android/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic blacklist access$1700(Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Entry;
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 830
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic blacklist access$1800(Lcom/android/okhttp/internal/DiskLruCache$Editor;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 830
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method


# virtual methods
.method public blacklist abort()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 936
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_1a

    .line 939
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_15

    .line 940
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2500(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 942
    :cond_15
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    .line 943
    monitor-exit v0

    .line 944
    return-void

    .line 937
    :cond_1a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    throw v1

    .line 943
    .restart local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public blacklist abortUnlessCommitted()V
    .registers 4

    .line 947
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 948
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_19

    if-ne v1, p0, :cond_17

    .line 950
    :try_start_f
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    const/4 v2, 0x0

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2500(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_16
    .catchall {:try_start_f .. :try_end_15} :catchall_19

    .line 952
    goto :goto_17

    .line 951
    :catch_16
    move-exception v1

    .line 954
    :cond_17
    :goto_17
    :try_start_17
    monitor-exit v0

    .line 955
    return-void

    .line 954
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public blacklist commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 920
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_19

    .line 923
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_15

    .line 924
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # invokes: Lcom/android/okhttp/internal/DiskLruCache;->completeEdit(Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v1, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2500(Lcom/android/okhttp/internal/DiskLruCache;Lcom/android/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 926
    :cond_15
    iput-boolean v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    .line 927
    monitor-exit v0

    .line 928
    return-void

    .line 921
    :cond_19
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    throw v1

    .line 927
    .restart local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method blacklist detach()V
    .registers 4

    .line 847
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v0

    if-ne v0, p0, :cond_2d

    .line 848
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2200(Lcom/android/okhttp/internal/DiskLruCache;)I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 850
    :try_start_11
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/android/okhttp/internal/io/FileSystem;->delete(Ljava/io/File;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_23

    .line 853
    goto :goto_24

    .line 851
    :catch_23
    move-exception v1

    .line 848
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 855
    .end local v0    # "i":I
    :cond_27
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    const/4 v1, 0x0

    # setter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$902(Lcom/android/okhttp/internal/DiskLruCache$Entry;Lcom/android/okhttp/internal/DiskLruCache$Editor;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    .line 857
    :cond_2d
    return-void
.end method

.method public blacklist newSink(I)Lcom/android/okhttp/okio/Sink;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 888
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_43

    .line 891
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_15

    .line 892
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;
    invoke-static {}, Lcom/android/okhttp/internal/DiskLruCache;->access$2400()Lcom/android/okhttp/okio/Sink;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 894
    :cond_15
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 895
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->written:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 897
    :cond_22
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1400(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v1

    aget-object v1, v1, p1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_49

    .line 900
    .local v1, "dirtyFile":Ljava/io/File;
    :try_start_2a
    iget-object v2, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;
    invoke-static {v2}, Lcom/android/okhttp/internal/DiskLruCache;->access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/okhttp/internal/io/FileSystem;->sink(Ljava/io/File;)Lcom/android/okhttp/okio/Sink;

    move-result-object v2
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_34} :catch_3c
    .catchall {:try_start_2a .. :try_end_34} :catchall_49

    .line 903
    .local v2, "sink":Lcom/android/okhttp/okio/Sink;
    nop

    .line 904
    :try_start_35
    new-instance v3, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;

    invoke-direct {v3, p0, v2}, Lcom/android/okhttp/internal/DiskLruCache$Editor$1;-><init>(Lcom/android/okhttp/internal/DiskLruCache$Editor;Lcom/android/okhttp/okio/Sink;)V

    monitor-exit v0

    return-object v3

    .line 901
    .end local v2    # "sink":Lcom/android/okhttp/okio/Sink;
    :catch_3c
    move-exception v2

    .line 902
    .local v2, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->NULL_SINK:Lcom/android/okhttp/okio/Sink;
    invoke-static {}, Lcom/android/okhttp/internal/DiskLruCache;->access$2400()Lcom/android/okhttp/okio/Sink;

    move-result-object v3

    monitor-exit v0

    return-object v3

    .line 889
    .end local v1    # "dirtyFile":Ljava/io/File;
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_43
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .end local p1    # "index":I
    throw v1

    .line 911
    .restart local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .restart local p1    # "index":I
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_35 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method public blacklist newSource(I)Lcom/android/okhttp/okio/Source;
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    monitor-enter v0

    .line 865
    :try_start_3
    iget-boolean v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->done:Z

    if-nez v1, :cond_32

    .line 868
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$800(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/android/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$900(Lcom/android/okhttp/internal/DiskLruCache$Entry;)Lcom/android/okhttp/internal/DiskLruCache$Editor;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_38

    if-eq v1, p0, :cond_19

    goto :goto_30

    .line 872
    :cond_19
    :try_start_19
    iget-object v1, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/android/okhttp/internal/DiskLruCache;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache;->fileSystem:Lcom/android/okhttp/internal/io/FileSystem;
    invoke-static {v1}, Lcom/android/okhttp/internal/DiskLruCache;->access$2300(Lcom/android/okhttp/internal/DiskLruCache;)Lcom/android/okhttp/internal/io/FileSystem;

    move-result-object v1

    iget-object v3, p0, Lcom/android/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/android/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/android/okhttp/internal/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v3}, Lcom/android/okhttp/internal/DiskLruCache$Entry;->access$1300(Lcom/android/okhttp/internal/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-interface {v1, v3}, Lcom/android/okhttp/internal/io/FileSystem;->source(Ljava/io/File;)Lcom/android/okhttp/okio/Source;

    move-result-object v1
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_2b} :catch_2d
    .catchall {:try_start_19 .. :try_end_2b} :catchall_38

    :try_start_2b
    monitor-exit v0

    return-object v1

    .line 873
    :catch_2d
    move-exception v1

    .line 874
    .local v1, "e":Ljava/io/FileNotFoundException;
    monitor-exit v0

    return-object v2

    .line 869
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_30
    :goto_30
    monitor-exit v0

    return-object v2

    .line 866
    :cond_32
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .end local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .end local p1    # "index":I
    throw v1

    .line 876
    .restart local p0    # "this":Lcom/android/okhttp/internal/DiskLruCache$Editor;
    .restart local p1    # "index":I
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v1
.end method
