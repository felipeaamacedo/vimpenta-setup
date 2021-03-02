# vimpenta-setup
Repository of my personal VIM set up

## installation
1. copy the .vimrc file to the path myusername:~$ path
2. install vim-plug by running the command

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

3. open the .vimrc file with vim
4. run the command :PlugInstall to install all plugins.
5. Close and Open to start using

## settup of ESLint and Prettier
1. Add ESLint and Prettier to your project

```
npm install --save-dev eslint prettier eslint-plugin-prettier eslint-config-prettier
```

2. Create the config ESLint file .eslintrc and the .prettierrc in the root of your project

### .eslintrc

```json
{
  "plugins": ["prettier"],
  "extends": ["prettier"],
  "rules": {
    "prettier/prettier": "error"
  }
}
```


### .prettierrc

```json
{
  "arrowParens": "always",
  "bracketSpacing": true,
  "embeddedLanguageFormatting": "auto",
  "htmlWhitespaceSensitivity": "css",
  "insertPragma": false,
  "jsxBracketSameLine": false,
  "jsxSingleQuote": false,
  "proseWrap": "preserve",
  "quoteProps": "as-needed",
  "requirePragma": false,
  "semi": false,
  "singleQuote": false,
  "tabWidth": 2,
  "trailingComma": "es5",
  "useTabs": false,
  "vueIndentScriptAndStyle": false,
  "printWidth": 80
}
```
