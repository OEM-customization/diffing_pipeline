.class public interface abstract Lcom/android/okhttp/internal/framed/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/internal/framed/PushObserver$1;
    }
.end annotation


# static fields
.field public static final CANCEL:Lcom/android/okhttp/internal/framed/PushObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Lcom/android/okhttp/internal/framed/PushObserver$1;

    invoke-direct {v0}, Lcom/android/okhttp/internal/framed/PushObserver$1;-><init>()V

    sput-object v0, Lcom/android/okhttp/internal/framed/PushObserver;->CANCEL:Lcom/android/okhttp/internal/framed/PushObserver;

    .line 41
    return-void
.end method


# virtual methods
.method public abstract onData(ILcom/android/okhttp/okio/BufferedSource;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/internal/framed/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILcom/android/okhttp/internal/framed/ErrorCode;)V
.end method
