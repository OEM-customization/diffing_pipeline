.class Ljava/lang/Throwable$WrappedPrintWriter;
.super Ljava/lang/Throwable$PrintStreamOrWriter;
.source "Throwable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/Throwable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedPrintWriter"
.end annotation


# instance fields
.field private final greylist-max-o printWriter:Ljava/io/PrintWriter;


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/lang/Throwable$PrintStreamOrWriter;-><init>(Ljava/lang/Throwable$1;)V

    .line 770
    iput-object p1, p0, Ljava/lang/Throwable$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    .line 771
    return-void
.end method


# virtual methods
.method greylist-max-o lock()Ljava/lang/Object;
    .registers 2

    .line 774
    iget-object v0, p0, Ljava/lang/Throwable$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method greylist-max-o println(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 778
    iget-object v0, p0, Ljava/lang/Throwable$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 779
    return-void
.end method
