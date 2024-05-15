.class final Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
.super Ljava/lang/Object;
.source "NativeSsl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/NativeSsl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BioWrapper"
.end annotation


# instance fields
.field private volatile blacklist bio:J

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/NativeSsl;


# direct methods
.method private constructor blacklist <init>(Lcom/android/org/conscrypt/NativeSsl;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/org/conscrypt/NativeSsl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 656
    iput-object p1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    # getter for: Lcom/android/org/conscrypt/NativeSsl;->ssl:J
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeSsl;->access$100(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_BIO_new(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 658
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/org/conscrypt/NativeSsl;Lcom/android/org/conscrypt/NativeSsl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/org/conscrypt/NativeSsl;
    .param p2, "x1"    # Lcom/android/org/conscrypt/NativeSsl$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 653
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;-><init>(Lcom/android/org/conscrypt/NativeSsl;)V

    return-void
.end method


# virtual methods
.method blacklist close()V
    .registers 5

    .line 696
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 698
    :try_start_d
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 699
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 700
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1a

    .line 701
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_29

    .line 704
    .end local v0    # "toFree":J
    :cond_1a
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 705
    nop

    .line 706
    return-void

    .line 704
    :catchall_29
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 705
    throw v0
.end method

.method blacklist getPendingWrittenBytes()I
    .registers 5

    .line 661
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 663
    :try_start_d
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x0

    goto :goto_1d

    :cond_17
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_written_bytes_in_BIO(J)I

    move-result v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_2b

    .line 665
    :goto_1d
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 663
    return v0

    .line 665
    :catchall_2b
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 666
    throw v0
.end method

.method blacklist readDirectByteBuffer(JI)I
    .registers 14
    .param p1, "destAddress"    # J
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 683
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 685
    :try_start_d
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_39

    .line 688
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    .line 689
    # getter for: Lcom/android/org/conscrypt/NativeSsl;->ssl:J
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$100(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$300(Lcom/android/org/conscrypt/NativeSsl;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v9

    .line 688
    move-wide v6, p1

    move v8, p3

    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_direct(JLcom/android/org/conscrypt/NativeSsl;JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_41

    .line 691
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 688
    return v0

    .line 686
    :cond_39
    :try_start_39
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    .end local p1    # "destAddress":J
    .end local p3    # "destLength":I
    throw v0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_41

    .line 691
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    .restart local p1    # "destAddress":J
    .restart local p3    # "destLength":I
    :catchall_41
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 692
    throw v0
.end method

.method blacklist writeDirectByteBuffer(JI)I
    .registers 14
    .param p1, "address"    # J
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 672
    :try_start_d
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_39

    .line 675
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    .line 676
    # getter for: Lcom/android/org/conscrypt/NativeSsl;->ssl:J
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$100(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$300(Lcom/android/org/conscrypt/NativeSsl;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v9

    .line 675
    move-wide v6, p1

    move v8, p3

    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_BIO_direct(JLcom/android/org/conscrypt/NativeSsl;JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_41

    .line 678
    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 675
    return v0

    .line 673
    :cond_39
    :try_start_39
    new-instance v0, Ljavax/net/ssl/SSLException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    .end local p1    # "address":J
    .end local p3    # "length":I
    throw v0
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_41

    .line 678
    .restart local p0    # "this":Lcom/android/org/conscrypt/NativeSsl$BioWrapper;
    .restart local p1    # "address":J
    .restart local p3    # "length":I
    :catchall_41
    move-exception v0

    iget-object v1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;
    invoke-static {v1}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 679
    throw v0
.end method
