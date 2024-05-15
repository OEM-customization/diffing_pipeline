.class final synthetic Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiPredicate;

    check-cast p1, Ljava/nio/file/FileTreeWalker$Event;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/nio/file/Files;->lambda$-java_nio_file_Files_166663(Ljava/util/function/BiPredicate;Ljava/nio/file/FileTreeWalker$Event;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/nio/file/-$Lambda$iV0HzPWaaR68t7NV87hCwF49CFs$2;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
