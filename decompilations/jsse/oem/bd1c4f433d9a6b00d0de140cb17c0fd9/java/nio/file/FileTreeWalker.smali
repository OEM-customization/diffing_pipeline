.class Ljava/nio/file/FileTreeWalker;
.super Ljava/lang/Object;
.source "FileTreeWalker.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/FileTreeWalker$DirectoryNode;,
        Ljava/nio/file/FileTreeWalker$Event;,
        Ljava/nio/file/FileTreeWalker$EventType;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-nio-file-FileVisitOptionSwitchesValues:[I


# instance fields
.field private closed:Z

.field private final followLinks:Z

.field private final linkOptions:[Ljava/nio/file/LinkOption;

.field private final maxDepth:I

.field private final stack:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/nio/file/FileTreeWalker$DirectoryNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic -getjava-nio-file-FileVisitOptionSwitchesValues()[I
    .registers 3

    sget-object v0, Ljava/nio/file/FileTreeWalker;->-java-nio-file-FileVisitOptionSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljava/nio/file/FileTreeWalker;->-java-nio-file-FileVisitOptionSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljava/nio/file/FileVisitOption;->values()[Ljava/nio/file/FileVisitOption;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljava/nio/file/FileVisitOption;->FOLLOW_LINKS:Ljava/nio/file/FileVisitOption;

    invoke-virtual {v1}, Ljava/nio/file/FileVisitOption;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_1a

    :goto_17
    sput-object v0, Ljava/nio/file/FileTreeWalker;->-java-nio-file-FileVisitOptionSwitchesValues:[I

    return-object v0

    :catch_1a
    move-exception v1

    goto :goto_17
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/nio/file/FileTreeWalker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/nio/file/FileTreeWalker;->-assertionsDisabled:Z

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;I)V
    .registers 9
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/nio/file/FileVisitOption;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/nio/file/FileVisitOption;>;"
    const/4 v5, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "fl":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "option$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/FileVisitOption;

    .line 181
    .local v1, "option":Ljava/nio/file/FileVisitOption;
    invoke-static {}, Ljava/nio/file/FileTreeWalker;->-getjava-nio-file-FileVisitOptionSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/file/FileVisitOption;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_52

    .line 184
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v4, "Should not get here"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 182
    :pswitch_32
    const/4 v0, 0x1

    goto :goto_10

    .line 187
    .end local v1    # "option":Ljava/nio/file/FileVisitOption;
    :cond_34
    if-gez p2, :cond_3f

    .line 188
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "\'maxDepth\' is negative"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 190
    :cond_3f
    iput-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    .line 191
    if-eqz v0, :cond_4a

    new-array v3, v5, [Ljava/nio/file/LinkOption;

    :goto_45
    iput-object v3, p0, Ljava/nio/file/FileTreeWalker;->linkOptions:[Ljava/nio/file/LinkOption;

    .line 193
    iput p2, p0, Ljava/nio/file/FileTreeWalker;->maxDepth:I

    .line 194
    return-void

    .line 192
    :cond_4a
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/nio/file/LinkOption;

    sget-object v4, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    aput-object v4, v3, v5

    goto :goto_45

    .line 181
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_32
    .end packed-switch
.end method

.method private getAttributes(Ljava/nio/file/Path;Z)Ljava/nio/file/attribute/BasicFileAttributes;
    .registers 10
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "canUseCached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    if-eqz p2, :cond_22

    .line 206
    instance-of v3, p1, Lsun/nio/fs/BasicFileAttributesHolder;

    .line 205
    if-eqz v3, :cond_22

    .line 207
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_22

    move-object v3, p1

    .line 209
    check-cast v3, Lsun/nio/fs/BasicFileAttributesHolder;

    invoke-interface {v3}, Lsun/nio/fs/BasicFileAttributesHolder;->get()Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v1

    .line 210
    .local v1, "cached":Ljava/nio/file/attribute/BasicFileAttributes;
    if-eqz v1, :cond_22

    iget-boolean v3, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/nio/file/attribute/BasicFileAttributes;->isSymbolicLink()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_22

    .line 211
    :cond_21
    return-object v1

    .line 219
    .end local v1    # "cached":Ljava/nio/file/attribute/BasicFileAttributes;
    :cond_22
    :try_start_22
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    iget-object v4, p0, Ljava/nio/file/FileTreeWalker;->linkOptions:[Ljava/nio/file/LinkOption;

    invoke-static {p1, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_2b

    move-result-object v0

    .line 229
    .local v0, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    :goto_2a
    return-object v0

    .line 220
    .end local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    :catch_2b
    move-exception v2

    .line 221
    .local v2, "ioe":Ljava/io/IOException;
    iget-boolean v3, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-nez v3, :cond_31

    .line 222
    throw v2

    .line 226
    :cond_31
    const-class v3, Ljava/nio/file/attribute/BasicFileAttributes;

    .line 225
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/LinkOption;

    .line 227
    sget-object v5, Ljava/nio/file/LinkOption;->NOFOLLOW_LINKS:Ljava/nio/file/LinkOption;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 225
    invoke-static {p1, v3, v4}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object v0

    .restart local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    goto :goto_2a
.end method

.method private visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;
    .registers 13
    .param p1, "entry"    # Ljava/nio/file/Path;
    .param p2, "ignoreSecurityException"    # Z
    .param p3, "canUseCached"    # Z

    .prologue
    const/4 v6, 0x0

    .line 276
    :try_start_1
    invoke-direct {p0, p1, p3}, Ljava/nio/file/FileTreeWalker;->getAttributes(Ljava/nio/file/Path;Z)Ljava/nio/file/attribute/BasicFileAttributes;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_4} :catch_24
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_4} :catch_1f

    move-result-object v0

    .line 286
    .local v0, "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    iget-object v5, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    .line 287
    .local v1, "depth":I
    iget v5, p0, Ljava/nio/file/FileTreeWalker;->maxDepth:I

    if-ge v1, v5, :cond_17

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2d

    .line 288
    :cond_17
    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v5, v6, p1, v0}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    return-object v5

    .line 279
    .end local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .end local v1    # "depth":I
    :catch_1f
    move-exception v3

    .line 280
    .local v3, "se":Ljava/lang/SecurityException;
    if-eqz p2, :cond_23

    .line 281
    return-object v6

    .line 282
    :cond_23
    throw v3

    .line 277
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catch_24
    move-exception v2

    .line 278
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v5, v6, p1, v2}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v5

    .line 292
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "attrs":Ljava/nio/file/attribute/BasicFileAttributes;
    .restart local v1    # "depth":I
    :cond_2d
    iget-boolean v5, p0, Ljava/nio/file/FileTreeWalker;->followLinks:Z

    if-eqz v5, :cond_4c

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Ljava/nio/file/FileTreeWalker;->wouldLoop(Ljava/nio/file/Path;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 293
    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    .line 294
    new-instance v7, Ljava/nio/file/FileSystemLoopException;

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/nio/file/FileSystemLoopException;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-direct {v5, v6, p1, v7}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v5

    .line 298
    :cond_4c
    const/4 v4, 0x0

    .line 300
    .local v4, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :try_start_4d
    invoke-static {p1}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_6c
    .catch Ljava/lang/SecurityException; {:try_start_4d .. :try_end_50} :catch_67

    move-result-object v4

    .line 310
    .local v4, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    iget-object v5, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    new-instance v6, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    invoke-interface {v0}, Ljava/nio/file/attribute/BasicFileAttributes;->fileKey()Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v6, p1, v7, v4}, Ljava/nio/file/FileTreeWalker$DirectoryNode;-><init>(Ljava/nio/file/Path;Ljava/lang/Object;Ljava/nio/file/DirectoryStream;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 311
    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->START_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v5, v6, p1, v0}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)V

    return-object v5

    .line 303
    .local v4, "stream":Ljava/nio/file/DirectoryStream;, "Ljava/nio/file/DirectoryStream<Ljava/nio/file/Path;>;"
    :catch_67
    move-exception v3

    .line 304
    .restart local v3    # "se":Ljava/lang/SecurityException;
    if-eqz p2, :cond_6b

    .line 305
    return-object v6

    .line 306
    :cond_6b
    throw v3

    .line 301
    .end local v3    # "se":Ljava/lang/SecurityException;
    :catch_6c
    move-exception v2

    .line 302
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v5, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v6, Ljava/nio/file/FileTreeWalker$EventType;->ENTRY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-direct {v5, v6, p1, v2}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v5
.end method

.method private wouldLoop(Ljava/nio/file/Path;Ljava/lang/Object;)Z
    .registers 9
    .param p1, "dir"    # Ljava/nio/file/Path;
    .param p2, "key"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x1

    .line 239
    iget-object v4, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ancestor$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    .line 240
    .local v0, "ancestor":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->key()Ljava/lang/Object;

    move-result-object v2

    .line 241
    .local v2, "ancestorKey":Ljava/lang/Object;
    if-eqz p2, :cond_22

    if-eqz v2, :cond_22

    .line 242
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 244
    return v5

    .line 248
    :cond_22
    :try_start_22
    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/nio/file/Files;->isSameFile(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_2f
    .catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_29} :catch_2f

    move-result v4

    if-eqz v4, :cond_7

    .line 250
    return v5

    .line 257
    .end local v0    # "ancestor":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    .end local v2    # "ancestorKey":Ljava/lang/Object;
    :cond_2d
    const/4 v4, 0x0

    return v4

    .line 252
    .restart local v0    # "ancestor":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    .restart local v2    # "ancestorKey":Ljava/lang/Object;
    :catch_2f
    move-exception v3

    .local v3, "x":Ljava/lang/Exception;
    goto :goto_7
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 418
    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    if-nez v0, :cond_13

    .line 419
    :goto_4
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 420
    invoke-virtual {p0}, Ljava/nio/file/FileTreeWalker;->pop()V

    goto :goto_4

    .line 422
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    .line 424
    :cond_13
    return-void
.end method

.method isOpen()Z
    .registers 2

    .prologue
    .line 410
    iget-boolean v0, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method next()Ljava/nio/file/FileTreeWalker$Event;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 334
    iget-object v8, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    .line 335
    .local v6, "top":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    if-nez v6, :cond_13

    .line 336
    return-object v9

    .line 372
    :cond_d
    invoke-direct {p0, v2, v10, v10}, Ljava/nio/file/FileTreeWalker;->visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v3

    .line 376
    .local v3, "ev":Ljava/nio/file/FileTreeWalker$Event;
    if-nez v3, :cond_56

    .line 341
    .end local v3    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    :cond_13
    const/4 v2, 0x0

    .line 342
    .local v2, "entry":Ljava/nio/file/Path;
    const/4 v4, 0x0

    .line 345
    .local v4, "ioe":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skipped()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 346
    invoke-virtual {v6}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 348
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    :try_start_1f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 349
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/nio/file/Path;

    move-object v2, v0
    :try_end_2d
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_1f .. :try_end_2d} :catch_47

    .line 357
    .end local v2    # "entry":Ljava/nio/file/Path;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    :cond_2d
    :goto_2d
    if-nez v2, :cond_d

    .line 359
    :try_start_2f
    invoke-virtual {v6}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava/nio/file/DirectoryStream;

    move-result-object v8

    invoke-interface {v8}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_4d

    .line 367
    :goto_36
    iget-object v8, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 368
    new-instance v8, Ljava/nio/file/FileTreeWalker$Event;

    sget-object v9, Ljava/nio/file/FileTreeWalker$EventType;->END_DIRECTORY:Ljava/nio/file/FileTreeWalker$EventType;

    invoke-virtual {v6}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->directory()Ljava/nio/file/Path;

    move-result-object v10

    invoke-direct {v8, v9, v10, v4}, Ljava/nio/file/FileTreeWalker$Event;-><init>(Ljava/nio/file/FileTreeWalker$EventType;Ljava/nio/file/Path;Ljava/io/IOException;)V

    return-object v8

    .line 351
    .restart local v2    # "entry":Ljava/nio/file/Path;
    .restart local v4    # "ioe":Ljava/io/IOException;
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    :catch_47
    move-exception v7

    .line 352
    .local v7, "x":Ljava/nio/file/DirectoryIteratorException;
    invoke-virtual {v7}, Ljava/nio/file/DirectoryIteratorException;->getCause()Ljava/io/IOException;

    move-result-object v4

    .local v4, "ioe":Ljava/io/IOException;
    goto :goto_2d

    .line 360
    .end local v2    # "entry":Ljava/nio/file/Path;
    .end local v4    # "ioe":Ljava/io/IOException;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/file/Path;>;"
    .end local v7    # "x":Ljava/nio/file/DirectoryIteratorException;
    :catch_4d
    move-exception v1

    .line 361
    .local v1, "e":Ljava/io/IOException;
    if-eqz v4, :cond_52

    .line 362
    move-object v4, v1

    .restart local v4    # "ioe":Ljava/io/IOException;
    goto :goto_36

    .line 364
    .end local v4    # "ioe":Ljava/io/IOException;
    :cond_52
    invoke-virtual {v4, v1}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_36

    .line 378
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "ev":Ljava/nio/file/FileTreeWalker$Event;
    :cond_56
    return-object v3
.end method

.method pop()V
    .registers 4

    .prologue
    .line 388
    iget-object v2, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 389
    iget-object v2, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    .line 391
    .local v1, "node":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    :try_start_10
    invoke-virtual {v1}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->stream()Ljava/nio/file/DirectoryStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/DirectoryStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_18

    .line 394
    .end local v1    # "node":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    :cond_17
    :goto_17
    return-void

    .line 392
    .restart local v1    # "node":Ljava/nio/file/FileTreeWalker$DirectoryNode;
    :catch_18
    move-exception v0

    .local v0, "ignore":Ljava/io/IOException;
    goto :goto_17
.end method

.method skipRemainingSiblings()V
    .registers 2

    .prologue
    .line 401
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 402
    iget-object v0, p0, Ljava/nio/file/FileTreeWalker;->stack:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/FileTreeWalker$DirectoryNode;

    invoke-virtual {v0}, Ljava/nio/file/FileTreeWalker$DirectoryNode;->skip()V

    .line 404
    :cond_13
    return-void
.end method

.method walk(Ljava/nio/file/Path;)Ljava/nio/file/FileTreeWalker$Event;
    .registers 5
    .param p1, "file"    # Ljava/nio/file/Path;

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-boolean v1, p0, Ljava/nio/file/FileTreeWalker;->closed:Z

    if-eqz v1, :cond_e

    .line 320
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 322
    :cond_e
    invoke-direct {p0, p1, v2, v2}, Ljava/nio/file/FileTreeWalker;->visit(Ljava/nio/file/Path;ZZ)Ljava/nio/file/FileTreeWalker$Event;

    move-result-object v0

    .line 325
    .local v0, "ev":Ljava/nio/file/FileTreeWalker$Event;
    sget-boolean v1, Ljava/nio/file/FileTreeWalker;->-assertionsDisabled:Z

    if-nez v1, :cond_1e

    if-nez v0, :cond_1e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 326
    :cond_1e
    return-object v0
.end method
