.class Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;
.super Lcom/android/okhttp/internal/NamedRunnable;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->settings(ZLcom/android/okhttp/internal/framed/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;


# direct methods
.method varargs constructor <init>(Lcom/android/okhttp/internal/framed/FramedConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/okhttp/internal/framed/FramedConnection$Reader;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "$anonymous1"    # [Ljava/lang/Object;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    .line 733
    invoke-direct {p0, p2, p3}, Lcom/android/okhttp/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v0, v0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-static {v0}, Lcom/android/okhttp/internal/framed/FramedConnection;->-get4(Lcom/android/okhttp/internal/framed/FramedConnection;)Lcom/android/okhttp/internal/framed/FramedConnection$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/okhttp/internal/framed/FramedConnection$Reader$2;->this$1:Lcom/android/okhttp/internal/framed/FramedConnection$Reader;

    iget-object v1, v1, Lcom/android/okhttp/internal/framed/FramedConnection$Reader;->this$0:Lcom/android/okhttp/internal/framed/FramedConnection;

    invoke-virtual {v0, v1}, Lcom/android/okhttp/internal/framed/FramedConnection$Listener;->onSettings(Lcom/android/okhttp/internal/framed/FramedConnection;)V

    .line 736
    return-void
.end method
