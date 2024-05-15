.class Ljava/lang/ProcessEnvironment$StringKeySet;
.super Ljava/util/AbstractSet;
.source "ProcessEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/ProcessEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist s:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/ProcessEnvironment$Variable;",
            ">;)V"
        }
    .end annotation

    .line 393
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ProcessEnvironment$Variable;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput-object p1, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    return-void
.end method

.method static synthetic blacklist access$800(Ljava/lang/ProcessEnvironment$StringKeySet;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Ljava/lang/ProcessEnvironment$StringKeySet;

    .line 391
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api clear()V
    .registers 2

    .line 396
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public whitelist core-platform-api test-api contains(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api isEmpty()Z
    .registers 2

    .line 395
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 398
    new-instance v0, Ljava/lang/ProcessEnvironment$StringKeySet$1;

    invoke-direct {v0, p0}, Ljava/lang/ProcessEnvironment$StringKeySet$1;-><init>(Ljava/lang/ProcessEnvironment$StringKeySet;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api remove(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/ProcessEnvironment$Variable;->valueOfQueryOnly(Ljava/lang/Object;)Ljava/lang/ProcessEnvironment$Variable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api size()I
    .registers 2

    .line 394
    iget-object v0, p0, Ljava/lang/ProcessEnvironment$StringKeySet;->s:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
