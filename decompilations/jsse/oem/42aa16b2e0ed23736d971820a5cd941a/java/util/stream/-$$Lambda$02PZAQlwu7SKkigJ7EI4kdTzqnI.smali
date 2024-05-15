.class public final synthetic Ljava/util/stream/-$$Lambda$02PZAQlwu7SKkigJ7EI4kdTzqnI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$02PZAQlwu7SKkigJ7EI4kdTzqnI;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$02PZAQlwu7SKkigJ7EI4kdTzqnI;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$02PZAQlwu7SKkigJ7EI4kdTzqnI;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$02PZAQlwu7SKkigJ7EI4kdTzqnI;->INSTANCE:Ljava/util/stream/-$$Lambda$02PZAQlwu7SKkigJ7EI4kdTzqnI;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
