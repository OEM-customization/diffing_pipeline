.class public abstract Lcom/android/okhttp/okio/ForwardingSource;
.super Ljava/lang/Object;
.source "ForwardingSource.java"

# interfaces
.implements Lcom/android/okhttp/okio/Source;


# instance fields
.field private final delegate:Lcom/android/okhttp/okio/Source;


# direct methods
.method public constructor <init>(Lcom/android/okhttp/okio/Source;)V
    .registers 4
    .param p1, "delegate"    # Lcom/android/okhttp/okio/Source;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_e
    iput-object p1, p0, Lcom/android/okhttp/okio/ForwardingSource;->delegate:Lcom/android/okhttp/okio/Source;

    .line 27
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingSource;->delegate:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->close()V

    .line 44
    return-void
.end method

.method public final delegate()Lcom/android/okhttp/okio/Source;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingSource;->delegate:Lcom/android/okhttp/okio/Source;

    return-object v0
.end method

.method public read(Lcom/android/okhttp/okio/Buffer;J)J
    .registers 6
    .param p1, "sink"    # Lcom/android/okhttp/okio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingSource;->delegate:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/okhttp/okio/Source;->read(Lcom/android/okhttp/okio/Buffer;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public timeout()Lcom/android/okhttp/okio/Timeout;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/okhttp/okio/ForwardingSource;->delegate:Lcom/android/okhttp/okio/Source;

    invoke-interface {v0}, Lcom/android/okhttp/okio/Source;->timeout()Lcom/android/okhttp/okio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/okhttp/okio/ForwardingSource;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/okio/ForwardingSource;->delegate:Lcom/android/okhttp/okio/Source;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
