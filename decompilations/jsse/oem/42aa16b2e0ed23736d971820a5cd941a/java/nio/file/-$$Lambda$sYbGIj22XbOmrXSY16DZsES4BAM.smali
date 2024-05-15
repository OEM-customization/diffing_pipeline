.class public final synthetic Ljava/nio/file/-$$Lambda$sYbGIj22XbOmrXSY16DZsES4BAM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Ljava/nio/file/FileTreeIterator;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/nio/file/FileTreeIterator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/-$$Lambda$sYbGIj22XbOmrXSY16DZsES4BAM;->f$0:Ljava/nio/file/FileTreeIterator;

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api run()V
    .registers 2

    iget-object v0, p0, Ljava/nio/file/-$$Lambda$sYbGIj22XbOmrXSY16DZsES4BAM;->f$0:Ljava/nio/file/FileTreeIterator;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeIterator;->close()V

    return-void
.end method
