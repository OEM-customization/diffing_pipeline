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
        "Ljava/util/Collections$EmptyIterator",
        "<TE;>;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$EmptyListIterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4279
    new-instance v0, Ljava/util/Collections$EmptyListIterator;

    invoke-direct {v0}, Ljava/util/Collections$EmptyListIterator;-><init>()V

    .line 4278
    sput-object v0, Ljava/util/Collections$EmptyListIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyListIterator;

    .line 4274
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 4274
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Collections$EmptyIterator;-><init>(Ljava/util/Collections$EmptyIterator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 4286
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 4281
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 4283
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 4282
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 4284
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 4285
    .local p0, "this":Ljava/util/Collections$EmptyListIterator;, "Ljava/util/Collections$EmptyListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
