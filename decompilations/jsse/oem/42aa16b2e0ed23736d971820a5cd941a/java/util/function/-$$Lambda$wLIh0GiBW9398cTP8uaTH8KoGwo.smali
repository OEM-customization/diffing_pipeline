.class public final synthetic Ljava/util/function/-$$Lambda$wLIh0GiBW9398cTP8uaTH8KoGwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic blacklist INSTANCE:Ljava/util/function/-$$Lambda$wLIh0GiBW9398cTP8uaTH8KoGwo;


# direct methods
.method static synthetic constructor blacklist <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/function/-$$Lambda$wLIh0GiBW9398cTP8uaTH8KoGwo;

    invoke-direct {v0}, Ljava/util/function/-$$Lambda$wLIh0GiBW9398cTP8uaTH8KoGwo;-><init>()V

    sput-object v0, Ljava/util/function/-$$Lambda$wLIh0GiBW9398cTP8uaTH8KoGwo;->INSTANCE:Ljava/util/function/-$$Lambda$wLIh0GiBW9398cTP8uaTH8KoGwo;

    return-void
.end method

.method private synthetic constructor blacklist <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api test(Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
