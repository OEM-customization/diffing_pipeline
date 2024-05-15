.class public final synthetic Ljava/util/stream/-$$Lambda$w4zz3RuWVbX94KiVllUNB6u_ygA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/LongFunction;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/stream/-$$Lambda$w4zz3RuWVbX94KiVllUNB6u_ygA;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/stream/-$$Lambda$w4zz3RuWVbX94KiVllUNB6u_ygA;

    invoke-direct {v0}, Ljava/util/stream/-$$Lambda$w4zz3RuWVbX94KiVllUNB6u_ygA;-><init>()V

    sput-object v0, Ljava/util/stream/-$$Lambda$w4zz3RuWVbX94KiVllUNB6u_ygA;->INSTANCE:Ljava/util/stream/-$$Lambda$w4zz3RuWVbX94KiVllUNB6u_ygA;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api apply(J)Ljava/lang/Object;
    .registers 3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
