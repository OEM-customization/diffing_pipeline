.class Ljava/nio/file/FileTreeIterator;
.super Ljava/lang/Object;
.source "FileTreeIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/nio/file/FileTreeWalker$Event;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private next:Ljava/nio/file/FileTreeWalker$Event;

.field private final walker:Ljava/nio/file/FileTreeWalker;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/nio/file/FileTreeIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/file/FileTreeIterator;->-assertionsDisabled:Z

    .line 51
    return-void
.end method

.method varargs constructor <init>(Ljava/nio/file/Path;I[Ljava/nio/file/FileVisitOption;)V
    .registers 7
    .param p1, "start"    # Ljava/nio/file/Path;
    .param p2, "maxDepth"    # I
    .param p3, "options"    # [Ljava/nio/file/FileVisitOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Ljava/nio/file/FileTreeWalker;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/nio/file/FileTreeWalker;-><init>(Ljava/util/Collection;I)V

    iput-object v1, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    .line 72
    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v1, p1}, Ljava/nio/file/FileTreeWalker;->walk(Ljava/nio/file/Path;)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v1

    iput-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    .line 73
    sget-boolean v1, Ljava/nio/file/FileTreeIterator;->-assertionsDisabled:Z

    if-nez v1, :cond_34

    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v1

    sget-object v2, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    if-eq v1, v2, :cond_34

    .line 74
    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v1

    sget-object v2, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    if-eq v1, v2, :cond_34

    .line 73
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 77
    :cond_34
    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v0

    .line 78
    .local v0, "ioe":Ljava/io/IOException;
    if-eqz v0, :cond_3d

    .line 79
    throw v0

    .line 80
    :cond_3d
    return-void
.end method

.method private fetchNextIfNeeded()V
    .registers 5

    .prologue
    .line 83
    iget-object v2, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-nez v2, :cond_2a

    .line 84
    iget-object v2, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v2}, Ljava/nio/file/FileTreeWalker;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    .line 85
    .local v0, "ev":Ljava/nio/file/FileTreeWalker$Event;
    :goto_a
    if-eqz v0, :cond_2a

    .line 86
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->ioeException()Ljava/io/IOException;

    move-result-object v1

    .line 87
    .local v1, "ioe":Ljava/io/IOException;
    if-eqz v1, :cond_18

    .line 88
    new-instance v2, Ljava/io/UncheckedIOException;

    invoke-direct {v2, v1}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 91
    :cond_18
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$Event;->type()Ljava/nio/file/FileTreeWalker$EventType;

    move-result-object v2

    sget-object v3, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    if-eq v2, v3, :cond_23

    .line 92
    iput-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    .line 93
    return-void

    .line 95
    :cond_23
    iget-object v2, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v2}, Ljava/nio/file/FileTreeWalker;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    goto :goto_a

    .line 98
    .end local v0    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    .end local v1    # "ioe":Ljava/io/IOException;
    :cond_2a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->close()V

    .line 123
    return-void
.end method

.method public hasNext()Z
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker;->isOpen()Z

    move-result v0

    if-nez v0, :cond_e

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 104
    :cond_e
    invoke-direct {p0}, Ljava/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    .line 105
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 108
    invoke-virtual {p0}, Ljava/nio/file/FileTreeIterator;->next()Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/nio/file/FileTreeWalker$Event;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->walker:Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker;->isOpen()Z

    move-result v1

    if-nez v1, :cond_f

    .line 111
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 112
    :cond_f
    invoke-direct {p0}, Ljava/nio/file/FileTreeIterator;->fetchNextIfNeeded()V

    .line 113
    iget-object v1, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    if-nez v1, :cond_1c

    .line 114
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 115
    :cond_1c
    iget-object v0, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    .line 116
    .local v0, "result":Ljava/nio/file/FileTreeWalker$Event;
    iput-object v2, p0, Ljava/nio/file/FileTreeIterator;->next:Ljava/nio/file/FileTreeWalker$Event;

    .line 117
    return-object v0
.end method
