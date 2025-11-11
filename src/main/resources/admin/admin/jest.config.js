module.exports = {
    // 指定测试环境的类型，可以是 'node'（默认）或 'jsdom'（用于模拟浏览器环境）
    testEnvironment: 'node',

    // 指定测试文件的匹配模式，可以使用 glob 模式
    testMatch: [
        '**/src/main/resources/admin/admin/tests/**/*.spec.js', // 根据你的项目结构调整路径
    ],
    moduleFileExtensions: [
        'js',
        'json',
        // 告诉 Jest 处理 ".vue" 文件
        'vue'
    ],
    // 指定测试文件的变换器（transformer），用于将 ES6+ 代码转换为兼容的 JavaScript 版本
    // 如果你使用的是 Babel，可以安装 @babel/jest 并设置如下
    // transform: {
    //   '^.+\\.js$': 'babel-jest',
    // },

    // 如果你不需要变换器，可以设置为 null 或省略此选项
    transform: {
        // 用 "vue-jest" 处理 ".vue" 文件
        '^.+\\.vue$': 'vue-jest',
        '^.+\\.js$': 'babel-jest'
    },
    // 指定模块文件解析时使用的配置
    // 例如，如果你想让 Jest 使用与你的项目相同的别名，你可以在这里配置
    // moduleNameMapper: {
    //   '^@components/(.*)$': '<rootDir>/src/components/$1',
    // },

    // 设置 Jest 应该在哪些文件或目录中查找模块
    // modulePathIgnorePatterns: ['<rootDir>/dist/'],

    // 设置 Jest 应该收集覆盖率信息的文件
    collectCoverageFrom: [
        'src/**/*.{js,jsx,ts,tsx}', // 根据你的项目文件类型调整
        '!**/node_modules/**',
        '!**/vendor/**',
    ],

    // 设置覆盖率报告的详细程度
    coverageReporters: ['html', 'text-summary'],

    // 设置是否打印每个测试文件的覆盖率报告
    coverageDirectory: 'coverage',

    // 设置 Jest 是否应该清除模块注册表（和缓存）在每次运行测试之前
    clearMocks: true,

    // 设置 Jest 是否应该自动重置所有模拟函数和间谍在每次测试运行之前
    resetMocks: true,

    // 设置 Jest 是否应该恢复所有被模拟（stubbed）的模块在每次测试运行之前
    restoreMocks: true,

    // 设置 Jest 的根目录，用于解析模块和配置文件的相对路径
    rootDir: '.',

    // 设置 Jest 应该使用的测试运行器，默认是 'jest-runner'
    // 如果你使用了特殊的测试运行器，比如 'ts-jest'，你可以在这里设置
    // testRunner: 'ts-jest',

    // 其他配置...
};