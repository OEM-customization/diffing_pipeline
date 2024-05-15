.class final synthetic Ljava/util/regex/-$Lambda$eZjdXhZBotlAmQhOgzRhste3xLI;
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
    iget-object v0, p0, Ljava/util/regex/-$Lambda$eZjdXhZBotlAmQhOgzRhste3xLI;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/regex/Pattern;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->lambda$-java_util_regex_Pattern_61657(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/regex/-$Lambda$eZjdXhZBotlAmQhOgzRhste3xLI;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    invoke-direct {p0, p1}, Ljava/util/regex/-$Lambda$eZjdXhZBotlAmQhOgzRhste3xLI;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
