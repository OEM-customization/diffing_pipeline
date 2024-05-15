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

    .line 654
    iput-object p1, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    # getter for: Lcom/android/org/conscrypt/NativeSsl;->ssl:J
    invoke-static {p1}, Lcom/android/org/conscrypt/NativeSsl;->access$100(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_BIO_new(JLcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 656
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

    .line 651
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;-><init>(Lcom/android/org/conscrypt/NativeSsl;)V

    return-void
.end method


# virtual methods
.method blacklist close()V
    .registers 5

    .line 677
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 678
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    .line 679
    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 680
    return-void
.end method

.method blacklist getPendingWrittenBytes()I
    .registers 5

    .line 659
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 660
    iget-wide v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/NativeCrypto;->SSL_pending_written_bytes_in_BIO(J)I

    move-result v0

    return v0

    .line 662
    :cond_f
    const/4 v0, 0x0

    return v0
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

    .line 672
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    .line 673
    # getter for: Lcom/android/org/conscrypt/NativeSsl;->ssl:J
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$100(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v9

    .line 672
    move-wide v6, p1

    move v8, p3

    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_read_BIO_direct(JLcom/android/org/conscrypt/NativeSsl;JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
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

    .line 667
    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    .line 668
    # getter for: Lcom/android/org/conscrypt/NativeSsl;->ssl:J
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$100(Lcom/android/org/conscrypt/NativeSsl;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    iget-wide v4, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->bio:J

    iget-object v0, p0, Lcom/android/org/conscrypt/NativeSsl$BioWrapper;->this$0:Lcom/android/org/conscrypt/NativeSsl;

    # getter for: Lcom/android/org/conscrypt/NativeSsl;->handshakeCallbacks:Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeSsl;->access$200(Lcom/android/org/conscrypt/NativeSsl;)Lcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-result-object v9

    .line 667
    move-wide v6, p1

    move v8, p3

    invoke-static/range {v1 .. v9}, Lcom/android/org/conscrypt/NativeCrypto;->ENGINE_SSL_write_BIO_direct(JLcom/android/org/conscrypt/NativeSsl;JJILcom/android/org/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I

    move-result v0

    return v0
.end method
