.class Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->ackSettingsLater(Lcom/android/okhttp/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

.field final synthetic blacklist val$peerSettings:Lcom/android/okhttp/internal/framed/Settings;


# direct methods
.method varargs constructor blacklist <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/android/okhttp/internal/framed/Settings;)V
    .registers 5
    .param p1, "this$1"    # Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .line 754
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iput-object p4, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;->val$peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist execute()V
    .registers 3

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedConnection;->frameWriter:Lcom/android/okhttp/internal/framed/FrameWriter;

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$3;->val$peerSettings:Lcom/android/okhttp/internal/framed/Settings;

    invoke-interface {v0, v1}, Lcom/android/okhttp/internal/framed/FrameWriter;->ackSettings(Lcom/android/okhttp/internal/framed/Settings;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    .line 759
    goto :goto_d

    .line 758
    :catch_c
    move-exception v0

    .line 760
    :goto_d
    return-void
.end method
