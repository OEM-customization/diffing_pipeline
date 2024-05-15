.class Ljava/util/Collections$EmptyIterator;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final greylist-max-o EMPTY_ITERATOR:Ljava/util/Collections$EmptyIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$EmptyIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 4242
    new-instance v0, Ljava/util/Collections$EmptyIterator;

    invoke-direct {v0}, Ljava/util/Collections$EmptyIterator;-><init>()V

    sput-object v0, Ljava/util/Collections$EmptyIterator;->EMPTY_ITERATOR:Ljava/util/Collections$EmptyIterator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4241
    .local p0, "this":Ljava/util/Collections$EmptyIterator;, "Ljava/util/Collections$EmptyIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/Collections$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/util/Collections$1;

    .line 4241
    .local p0, "this":Ljava/util/Collections$EmptyIterator;, "Ljava/util/Collections$EmptyIterator<TE;>;"
    invoke-direct {p0}, Ljava/util/Collections$EmptyIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 4250
    .local p0, "this":Ljava/util/Collections$EmptyIterator;, "Ljava/util/Collections$EmptyIterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4251
    return-void
.end method

.method public whitelist core-platform-api test-api hasNext()Z
    .registers 2

    .line 4245
    .local p0, "this":Ljava/util/Collections$EmptyIterator;, "Ljava/util/Collections$EmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 4246
    .local p0, "this":Ljava/util/Collections$EmptyIterator;, "Ljava/util/Collections$EmptyIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api remove()V
    .registers 2

    .line 4247
    .local p0, "this":Ljava/util/Collections$EmptyIterator;, "Ljava/util/Collections$EmptyIterator<TE;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
