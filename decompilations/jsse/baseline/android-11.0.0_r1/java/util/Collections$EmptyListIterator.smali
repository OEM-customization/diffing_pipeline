.class Ljava/util/Collections$EmptyListIterator;
.super Ljava/util/Collections$EmptyIterator;
.source "Collections.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$EmptyIterator<",
        "TE;>;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$EmptyListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4289
    new-instance v0, Ljava/util/Collections$EmptyListIterator;

    invoke-direct {v0}, Ljava/util/Collections$EmptyListIterator;-><init>()V

    sput-object v0, Ljava/util/Collections$EmptyListIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 4285
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Collections$EmptyIterator;-><init>(Ljava/util/Collections$1;)V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 4297
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api hasPrevious()Z
    .registers 2

    .line 4292
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api nextIndex()I
    .registers 2

    .line 4294
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 4293
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api previousIndex()I
    .registers 2

    .line 4295
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist core-platform-api test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 4296
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
