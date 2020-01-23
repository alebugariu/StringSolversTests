(set-option :random-seed 0)
(set-option :produce-models true)
(set-option :produce-unsat-cores true)
; 
(set-info :status sat)
(declare-fun tmp_int1 () Int)
(declare-fun tmp_str0 () String)
(assert
 (= (str.at (str.substr tmp_str0 tmp_int1 tmp_int1) (str.len tmp_str0)) (int.to.str tmp_int1)))
(check-sat)

(get-info :reason-unknown)

;tmp_str0 = a
;tmp_int1 = -1
;actual status: not_implemented
;I0818 17:37:24.769562  3316 UnaryAutomaton.cpp:325] 1
;I0818 17:37:24.769614  3316 UnaryAutomaton.cpp:326] 1
;I0818 17:37:24.769626  3316 UnaryAutomaton.cpp:327] 1
;F0818 17:37:24.775054  3316 VariableValueComputer.cpp:1422] handle case
;*** Check failure stack trace: ***
;    @     0x7fabef494f5d  google::LogMessage::Fail()
;    @     0x7fabef497513  google::LogMessage::SendToLog()
;    @     0x7fabef494aeb  google::LogMessage::Flush()
;    @     0x7fabef49645e  google::LogMessageFatal::~LogMessageFatal()
;    @     0x7fabefab8a26  Vlab::Solver::VariableValueComputer::visitQualIdentifier()
;    @     0x7fabefb06992  Vlab::SMT::QualIdentifier::accept()
;    @     0x7fabefa059ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabefab7762  Vlab::Solver::VariableValueComputer::visitToString()
;    @     0x7fabefb03df0  Vlab::SMT::ToString::accept()
;    @     0x7fabefa059ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabefab27f6  Vlab::Solver::VariableValueComputer::visitEq()
;    @     0x7fabefaff450  Vlab::SMT::Eq::accept()
;    @     0x7fabefa059ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabefab0878  Vlab::Solver::VariableValueComputer::start()
;    @     0x7fabefaf15ef  Vlab::Solver::ConstraintSolver::update_variables()
;    @     0x7fabefae896e  Vlab::Solver::ConstraintSolver::visitAnd()
;    @     0x7fabefafdb5c  Vlab::SMT::And::accept()
;    @     0x7fabefa059ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabefaf1a82  Vlab::Solver::ConstraintSolver::check_and_visit()
;    @     0x7fabefae7d2c  Vlab::Solver::ConstraintSolver::visitAssert()
;    @     0x7fabefafbd2a  Vlab::SMT::Assert::accept()
;    @     0x7fabefa059ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabefb0a699  Vlab::SMT::Visitor::visit_list<>()
;    @     0x7fabefafb067  Vlab::SMT::Script::visit_children()
;    @     0x7fabefa059e0  Vlab::SMT::Visitor::visit_children_of()
;    @     0x7fabefae7b35  Vlab::Solver::ConstraintSolver::visitScript()
;    @     0x7fabefafb03c  Vlab::SMT::Script::accept()
;    @     0x7fabefa059ad  Vlab::SMT::Visitor::visit()
;    @     0x7fabefae77bb  Vlab::Solver::ConstraintSolver::start()
;    @     0x7fabef9ebb84  Vlab::Driver::Solve()
;    @           0x410110  main
;    @     0x7fabeeb47830  __libc_start_main
