const country = 'us'

// JavaScriptのswitch文。breakを書き忘れると、その次のcase節の処理も実行されてしまう（フォールスルー）
switch (country) {
    case 'japan':
        console.log('こんにちは')
        break
    case 'us':
        console.log('Hello')
        // フォールスルーさせるため、わざとコメントアウト
        // break
    case 'italy':
        console.log('Ciao')
        break
    default:
        console.log('???')
}